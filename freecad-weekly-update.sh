#!/usr/bin/env bash

set -e -o pipefail

api_url="https://api.github.com/repos/FreeCAD/FreeCAD/releases"

json=$(curl -s "$api_url")

find_latest_release_with_asset() {
  local pattern=$1
  echo "$json" | jq -r --arg pattern "$pattern" '
    map(select(.tag_name | test("^weekly-[0-9]{4}\\.[0-9]{2}\\.[0-9]{2}$"))) |
    sort_by(.tag_name) |
    reverse |
    map(select(.assets[]?.name | test($pattern))) |
    .[0]
  '
}

arm_release=$(find_latest_release_with_asset "-macOS-arm64-py311\\.dmg$")
arm_tag=$(echo "$arm_release" | jq -r '.tag_name')
arm_url=$(echo "$arm_release" | jq -r '.assets[] | select(.name | test("-macOS-arm64-py311\\.dmg$")) | .browser_download_url')
arm_sha=$(curl -sL "${arm_url}-SHA256.txt" | awk '{print $1}')
arm_version="${arm_tag#weekly-}"

intel_release=$(find_latest_release_with_asset "-macOS-x86_64-py311\\.dmg$")
intel_tag=$(echo "$intel_release" | jq -r '.tag_name')
intel_url=$(echo "$intel_release" | jq -r '.assets[] | select(.name | test("-macOS-x86_64-py311\\.dmg$")) | .browser_download_url')
intel_sha=$(curl -sL "${intel_url}-SHA256.txt" | awk '{print $1}')
intel_version="${intel_tag#weekly-}"

perl -0777 -p -e '
  s/(on_arm do\s+version\s+")[^"]+("\s+sha256\s+")[^"]+(")/${1}'$arm_version'${2}'$arm_sha'${3}/ms;
  s/(on_intel do\s+version\s+")[^"]+("\s+sha256\s+")[^"]+(")/${1}'$intel_version'${2}'$intel_sha'${3}/ms;
' \
     -i Casks/freecad@weekly.rb
