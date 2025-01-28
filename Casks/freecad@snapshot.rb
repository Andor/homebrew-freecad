cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "40006"
  sha256 arm:   "4b171d0d197674a98b9da627f2f31acadabedeefb46a9ec716e2959c0edd076d",
         intel: "a82398c36cb64cbc75feb3cfaab0ca1b6b4e70528e57432084f09db12255de09"

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
