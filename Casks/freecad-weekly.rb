cask "freecad-weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "38728"
  sha256 arm:   "145d6456cca96733568251d963aff6605849a9ddd8ae35fd65f9c3d3a5f76ca0",
         intel: "b56805f6ba2c9fe73114212830ffd9c36c48a2d88a6fbfcc7b97e5bda2a1c307"

  url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/weekly-builds/FreeCAD_weekly-builds-#{version}-conda-macOS-#{arch}-py311.dmg",
      verified: "github.com/FreeCAD/FreeCAD-Bundle/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
