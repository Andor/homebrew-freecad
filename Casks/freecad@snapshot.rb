cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "40655"
  sha256 arm:   "d400eb0752bd981d5fa341e3bbae710b592c3e2da5a155bcc23348951cc385bf",
         intel: "62ebf7f5e8788010b8115bb1408fbdc49dfd775ecf028538858ff1a39c4a1245"

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
