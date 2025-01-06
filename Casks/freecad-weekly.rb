cask "freecad-weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "39750"
  sha256 arm:   "566b5dcb8a2d70bf46ae65883255dca02f1d14864f6c7eec656d47abc17d1a97",
         intel: "29084dcf5372efb86a87d3f1e98cdd2baa850b486081928b78e4af9c43bd546a"

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
