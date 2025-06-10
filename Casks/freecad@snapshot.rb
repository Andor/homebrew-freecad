cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  version arm: "42133",
          intel: "42095"

  sha256 arm: "1e9de2ef3d08ed39b136fe89a3f72a4572d3983a3459f6721b82dcf53ac8ff98",
         intel: "2c9fc393edeb5534e544a89d200cba950fdff5c9a73adaf6f1a954f7eb7ca99e"

  url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/weekly-builds/FreeCAD_weekly-builds-#{version}-conda-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
