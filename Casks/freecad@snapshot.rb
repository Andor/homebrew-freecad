cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "41416"
  sha256 arm:   "69bb674d35f73c9459580327aa043976bff96f0a86767133dbbaa5866af14a80",
         intel: "c398d9e40602f6ee6054330e11c8f1cc3d87f192e2e2e931d252ed71c6b74409"

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
