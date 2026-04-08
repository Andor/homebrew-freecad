cask "freecad@weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "2026.04.08"
    sha256 "2ecef738151bbdcfd90896a35d6b3798334b2d581f45bf24f30c17cece40350e"
    url "https://github.com/FreeCAD/FreeCAD/releases/download/weekly-#{version}/FreeCAD_weekly-#{version}-macOS11-#{arch}.dmg",
      verified: "github.com/FreeCAD/FreeCAD/"
  end
  on_intel do
    version "2026.04.08"
    sha256 "6c528d92969c7bfd848b071e4577f19dc5c5c8e3691bc5e1d624c616eb79b642"
    url "https://github.com/FreeCAD/FreeCAD/releases/download/weekly-#{version}/FreeCAD_weekly-#{version}-macOS10-#{arch}.dmg",
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
