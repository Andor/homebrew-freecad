cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "40317"
  sha256 arm:   "fc2544f345c75303a6aa2cdfa96a5e3874832bb5a1d52b414f58c12fcaa53c59",
         intel: "2b7a06a0cf57d59aef2957f59d7f32e5f53138728bd238cb8c1b297498c9bb4b"

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
