cask "freecad@weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "2025.09.12"
    sha256 "652c6dda839d82c84293862977190d9b6d4f55dba18a7e6f43379b0bfee015f8"
  end
  on_intel do
    version "2025.09.12"
    sha256 "7f756f7edbe8b2c44acedc8e376d718cb0487d7347a9e500eb44c13c2eb9b5be"
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
