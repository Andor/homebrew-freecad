cask "freecad-weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "39153"
  sha256 arm:   "a7cbbd102f3172738afae5f9b49c25b2d886472bcd273fae5d6259ace3902113",
         intel: "322ce338058cdb210c0d919e6f95c94016739ce514ee8e52ef4f27b4fcdff3a2"

  url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/weekly-builds/FreeCAD_weekly-builds-#{version}-conda-macOS-#{arch}-py311.dmg",
      verified: "github.com/FreeCAD/FreeCAD-Bundle/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  livecheck do
    url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/expanded_assets/weekly-builds"
    regex(/<a href="\/FreeCAD\/FreeCAD-Bundle\/releases\/download\/weekly-builds\/FreeCAD_weekly-builds-(\d+)-conda-macOS-arm64-py311\.dmg"/)
  end

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
