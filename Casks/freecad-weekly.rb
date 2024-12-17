cask "freecad-weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "39673"
  sha256 arm:   "340fbeb1dc7b6ebf051b07ed18e9a687a8d71a9caba8bac9f15da6975c4e285c",
         intel: "97951d1198c27f7a8da21da0cefe12d4b04cdc9219a76b94fb47f421d3b4acd4"

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
