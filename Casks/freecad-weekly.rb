cask "freecad-weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "38991"
  sha256 arm:   "624e183e471764e92c2b6810cb40920b3803be8f3b4deaba0cc035cf4401517d",
         intel: "067a7bba560577d3f8ce6963700941ea126ee1fad69eb6bc365b17ce9df0d641"

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
