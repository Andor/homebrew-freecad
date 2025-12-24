cask "freecad@weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "2025.12.24"
    sha256 "7901f86644e87e8b512dd14d2a9247074c9325831976de02b12b1ca030982091"
  end
  on_intel do
    version "2025.12.24"
    sha256 "a5ccbe46a562808438666b4d3bae26daf29412547c8ee6bc838eaa97d7cc2157"
  end

  url "https://github.com/FreeCAD/FreeCAD/releases/download/weekly-#{version}/FreeCAD_weekly-#{version}-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :ventura"

  app "FreeCAD.app", target: "FreeCAD-weekly.app"

  # postflight do
  #   system_command "/usr/bin/xattr",
  #                  args: ["-rd", "com.apple.quarantine", "#{appdir}/FreeCAD-weekly.app"],
  #                  sudo: false
  # end

  zap trash: [
    "~/Library/Application Support/FreeCAD",
    "~/Library/Caches/FreeCAD",
    "~/Library/Preferences/com.freecad.FreeCAD.plist",
    "~/Library/Preferences/FreeCAD",
  ]
end
