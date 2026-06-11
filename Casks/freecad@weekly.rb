cask "freecad@weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "2026.06.10"
    sha256 "6c4eb28e0762f4b6023c7028c89aa23b5cc9eeca68e2ef27f46a7018ada9c2c4"
    url "https://github.com/FreeCAD/FreeCAD/releases/download/weekly-#{version}/FreeCAD_weekly-#{version}-macOS11-#{arch}.dmg",
      verified: "github.com/FreeCAD/FreeCAD/"
  end
  on_intel do
    version "2026.06.10"
    sha256 "4d4f75f319870b39be194379ac71894373306dc6af188bc0aabb7ae9dd2271c5"
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
