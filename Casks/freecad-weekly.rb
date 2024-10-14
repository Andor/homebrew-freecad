cask "freecad-weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "38946"
  sha256 arm:   "41c8ade7eda0a9bb2967f0ec90817ea301d1022961ccba76c783e4fa933219cb",
         intel: "62733a23b43197f2cdcb62a5739b57f76fcf26303528c14214c9ea95856a877c"

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
