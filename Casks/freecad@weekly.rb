cask "freecad@weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "2026.04.22"
    sha256 "5356f46dc605737d829bf11232feed13ee7e8be979d1f6d0b433619ea8858e40"
    url "https://github.com/FreeCAD/FreeCAD/releases/download/weekly-#{version}/FreeCAD_weekly-#{version}-macOS11-#{arch}.dmg",
      verified: "github.com/FreeCAD/FreeCAD/"
  end
  on_intel do
    version "2026.04.22"
    sha256 "9fd143b160d5fffa8d192941774106024b7eab3c0c6e9ff59d8c595e417e0e51"
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
