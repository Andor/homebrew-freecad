cask "freecad@weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "2025.10.08"
    sha256 "aa69f0921f2d09ed8d46f05b37806bb3bfa7fcea77bf3906c70a1a3f215a88d1"
  end
  on_intel do
    version "2025.10.01"
    sha256 "ef9fe8f0ac7da32646e4df85ba24fe204621a63d2f1ee7adb7f1dde7e22b9e80"
  end

  url "https://github.com/FreeCAD/FreeCAD/releases/download/weekly-#{version}/FreeCAD_weekly-#{version}-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  conflicts_with cask: [
    "freecad",
    "freecad@snapshot",
  ]
  depends_on macos: ">= :mojave"

  app "FreeCAD.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-rd", "com.apple.quarantine", "#{appdir}/FreeCAD.app"],
                   sudo: false
  end
end
