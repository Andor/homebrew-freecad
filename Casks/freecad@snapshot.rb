cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "43071"
    sha256 "7aaedf39959b4ddf1f2d28ad093d52e623145aa662c0cb44bddb011b7976b62a"
  end
  on_intel do
    version "43071"
    sha256 "18a10ead239ed1cc69fd222abc85376cfb5e5a94cf63e0069a2e8ff0f6692f75"
  end

  url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/weekly-builds/FreeCAD_weekly-builds-#{version}-conda-macOS-#{arch}-py311.dmg",
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
