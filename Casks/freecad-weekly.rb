cask "freecad-weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "38898"
  sha256 arm:   "d6e6184c4245d40367114142b93a385db3e0bba85f96b0647f7ca3a5d7e57db7",
         intel: "3a231284af0173f9afc80407ef615ba1c9b5a3777ce22728d38daec1efb22362"

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
