#!/usr/bin/env bash

set -e -o pipefail

url=https://github.com/FreeCAD/FreeCAD-Bundle/releases/expanded_assets/weekly-builds

# FreeCAD_weekly-builds-40444-conda-macOS-arm64-py311.dmg
all_builds=$(curl -s "$url" | grep -oE 'FreeCAD_weekly-builds-[0-9]+-conda-macOS-(arm64|x86_64)-py[0-9]+\.dmg' | sort -r)

arm_build=$(echo "$all_builds" | grep 'arm64' | head -n 1)
intel_build=$(echo "$all_builds" | grep 'x86_64' | head -n 1)

arm_version=$(echo "$arm_build" | sed -E 's/FreeCAD_weekly-builds-([0-9]+)-.*/\1/')
intel_version=$(echo "$intel_build" | sed -E 's/FreeCAD_weekly-builds-([0-9]+)-.*/\1/')

arm_sha=$(curl -sL "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/weekly-builds/${arm_build}-SHA256.txt" | awk '{print $1}')
intel_sha=$(curl -sL "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/weekly-builds/${intel_build}-SHA256.txt" | awk '{print $1}')

perl -0777 -p -e '
  s/(on_arm do.+?version ")[^"]+(")/${1}'$arm_version'${2}/ms;
  s/(on_arm do.+?sha256 ")[^"]+(")/${1}'$arm_sha'${2}/ms;

  s/(on_intel do.+?version ")[^"]+(")/${1}'$intel_version'${2}/ms;
  s/(on_intel do.+?sha256 ")[^"]+(")/${1}'$intel_sha'${2}/ms;
' \
     -i Casks/freecad@snapshot.rb
