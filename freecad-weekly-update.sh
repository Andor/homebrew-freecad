#!/usr/bin/env bash

set -e -o pipefail

api_url="https://api.github.com/repos/FreeCAD/FreeCAD/releases"

# Fetch latest matching release and extract version and asset URL
read -r version arm64 intel <<< $(curl -s "$api_url" | jq -r '
  map(select(.tag_name | test("^weekly-[0-9]{4}\\.[0-9]{2}\\.[0-9]{2}$"))) |
  sort_by(.tag_name) |
  reverse |
  .[0] as $latest |
  [
    $latest.tag_name,
    ($latest.assets[] | select(.name | test("^FreeCAD_weekly-[0-9]{4}\\.[0-9]{2}\\.[0-9]{2}-macOS-arm64-py311\\.dmg$")) | .browser_download_url),
    ($latest.assets[] | select(.name | test("^FreeCAD_weekly-[0-9]{4}\\.[0-9]{2}\\.[0-9]{2}-macOS-x86_64-py311\\.dmg$")) | .browser_download_url)
  ]
  | @tsv
')

# echo $version $intel $arm64
version=${version##weekly-}
# intel_sha=$(curl -L "${intel}-SHA256.txt" | awk '{print $1}')
arm64_sha=$(curl -L "${arm64}-SHA256.txt" | awk '{print $1}')

perl -p \
     -e 's/^(  version \").*/${1}'$version'"/; s/^(  sha256 arm:   ")[^,]+/${1}'$arm64_sha'",/; s/^(         intel: ").*$/${1}'$intel_sha'"/' \
     -i Casks/freecad@snapshot.rb
