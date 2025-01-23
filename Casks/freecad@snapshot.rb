cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "39896"
  sha256 arm:   "51618c172f34bc97e68e4169c366fa9509f69b81caf8ebc842cd18f4bddd2b75",
         intel: "e888ae2d315df9502b5a824daed3cad3a6238a97df1c6eeb574661f9a647784d"

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
