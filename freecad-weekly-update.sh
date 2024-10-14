#!/usr/bin/env bash

set -e -o pipefail

# https://github.com/FreeCAD/FreeCAD-Bundle/releases/expanded_assets/weekly-builds

version=38946
intel_sha=$(curl -L https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/weekly-builds/FreeCAD_weekly-builds-$version-conda-macOS-x86_64-py311.dmg-SHA256.txt | awk '{print $1}')
arm64_sha=$(curl -L https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/weekly-builds/FreeCAD_weekly-builds-$version-conda-macOS-arm64-py311.dmg-SHA256.txt | awk '{print $1}')


perl -p \
     -e 's/^(  version \").*/${1}'$version'"/; s/^(  sha256 arm:   ").*$/${1}'$arm64_sha'",/; s/^(         intel: ").*$/${1}'$intel_sha'"/' \
     -i Casks/freecad-weekly.rb
