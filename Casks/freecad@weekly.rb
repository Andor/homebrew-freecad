cask "freecad@weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "2026.02.25"
    sha256 "52a9c5002a457bb1a8f2a39812f86d74b7c1f94c6513e73fe6b4fb00930f839c"
    url "https://github.com/FreeCAD/FreeCAD/releases/download/weekly-#{version}/FreeCAD_weekly-#{version}-macOS-#{arch}-macOS15-py311.dmg",
      verified: "github.com/FreeCAD/FreeCAD/"
  end
  on_intel do
    version "2026.02.25"
    sha256 "6596ddf183b593c328a96e9f42ab5c2c861b1afaecd54c266bf117ab323674f4"
    url "https://github.com/FreeCAD/FreeCAD/releases/download/weekly-#{version}/FreeCAD_weekly-#{version}-macOS-#{arch}-macOS10-py311.dmg",
      verified: "github.com/FreeCAD/FreeCAD/"
  end

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
