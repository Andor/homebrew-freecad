cask "freecad@weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "2025.07.29"
    sha256 "01302a493e07cb0bce8d0325f8d2d4b7f8569e2189c9d94b5451fd0473bf5e90"
  end
  on_intel do
    version "2025.07.29"
    sha256 "8a79de17b227ee1f57242132c09af57764ec199a1732f9760c87a77ff8ee9deb"
  end

  url "https://github.com/FreeCAD/FreeCAD/releases/download/weekly-#{version}/FreeCAD_weekly-#{version}-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
