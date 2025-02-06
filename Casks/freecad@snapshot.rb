cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "40077"
  sha256 arm:   "94378ac3c8108aeee86ac9b82f36563b90dc725e2ffa08ecd0380b5008044890",
         intel: "8160a14fcaf2a5582b252761e471f842fe63be63eb23d1a23b3cc49c63bc32d8"

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
