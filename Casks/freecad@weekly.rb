cask "freecad@weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "2025.08.27"
    sha256 "560456edfd5d8499437be935ba7343a0505d284b03adaf14e855d599f123faeb"
  end
  on_intel do
    version "2025.08.27"
    sha256 "5e3275139513e3b6d4be0ce82ab7cb3de3518856e68b81b261c4f5b2fbba18fd"
  end

  url "https://github.com/FreeCAD/FreeCAD/releases/download/weekly-#{version}/FreeCAD_weekly-#{version}-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  conflicts_with cask: [
    "freecad",
    "freecad@weekly",
  ]
  depends_on macos: ">= :mojave"

  app "FreeCAD.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-rd", "com.apple.quarantine", "#{appdir}/FreeCAD.app"],
                   sudo: false
  end
end
