cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "41866"
  sha256 arm:   "401b31d5fd07a9d2f9e1e55ff336a8c27976d67f46f9fea4dc208a14f7366b66",
         intel: "58e1a658554d78d6612da2ee6b2ccd5b9675fe80216ff591ad6a657bf6162289"

  url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/weekly-builds/FreeCAD_weekly-builds-#{version}-conda-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
