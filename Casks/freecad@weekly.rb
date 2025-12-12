cask "freecad@weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "2025.12.10"
    sha256 "2f12ec946c97201367bc8efd96ccd93dda4fb80b294d7c5d1bb6306d5eecc36e"
  end
  on_intel do
    version "2025.12.10"
    sha256 "0db875355d168fc6be0711f5518bc024917acbd8358959a54f0921e89c66aee3"
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
