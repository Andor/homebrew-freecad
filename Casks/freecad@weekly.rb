cask "freecad@weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "2026.03.19"
    sha256 "dafa1a6622e83287aa96bf43bf074c3fc7bcebaedb4eabcf5b455d3d82e1a810"
    url "https://github.com/FreeCAD/FreeCAD/releases/download/weekly-#{version}/FreeCAD_weekly-#{version}-macOS-#{arch}-macOS15-py311.dmg",
      verified: "github.com/FreeCAD/FreeCAD/"
  end
  on_intel do
    version "2026.03.18"
    sha256 "e84ce1c8aef6141c564dd8cd7684612ee260fdb8082d939443d804f9bb0da8b1"
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
