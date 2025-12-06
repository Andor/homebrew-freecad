cask "freecad@weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "2025.12.03"
    sha256 "4ba0d931b2f10e4c2d0d9c57be275a9cdb6bb90c98bd1d23683d7143f7d9f690"
  end
  on_intel do
    version "2025.12.03"
    sha256 "62a37763cc6d3dcbe4591ab753c3d4078b8fe1d1091eaae2ff3979bbe5e705b0"
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
