cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "39841"
  sha256 arm:   "08b080d790743194aa5bfc58f83f38d3bb69e2f842ea0e6d1a70bb7eb784fb0e",
         intel: "cb8526942b03082d60f0aa7b30c21b70fdbda6361af4bd659923b69c69831b88"

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
