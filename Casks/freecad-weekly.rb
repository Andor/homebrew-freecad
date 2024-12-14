cask "freecad-weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "39642"
  sha256 arm:   "6caf1819a3f6605485ecfd3520cec7e223f1d362e885bd9fda419fee31a76915",
         intel: "5c1b3e101a66d3bfbe89919bce7caf5a4bd4cdb8f821b1cdd7fcee2a6bd31503"

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
