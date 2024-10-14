cask "orcaslicer-rc" do
  arch arm: "arm64", intel: "x86_64"

  version "2.2.0"
  sha256 arm:   "c2060141e79536cf8f4a6cc2931c8a9c3968ec4c2811cee4e2aba39dd1582cc7",
         intel: "4d25ffddbcc3a472573a99392edb21529533795cc2c02b4136767cb09fde34e2"

  url "https://github.com/SoftFever/OrcaSlicer/releases/download/v#{version}-rc/OrcaSlicer_Mac_#{arch}_V#{version}-rc.dmg"
  name "Orca Slicer"
  desc "G-code generator for 3D printers"
  homepage "https://github.com/SoftFever/OrcaSlicer"

  app "OrcaSlicer.app"

  zap trash: [
    "~/Library/Application Support/OrcaSlicer",
    "~/Library/Caches/com.softfever3d.orca-slicer",
    "~/Library/HTTPStorages/com.softfever3d.orcaslicer.binarycookies",
    "~/Library/Preferences/com.softfever3d.orca-slicer.plist",
    "~/Library/Saved Application State/com.softfever3d.orca-slicer.savedState",
    "~/Library/WebKit/com.softfever3d.orca-slicer",
  ]
end
