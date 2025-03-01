cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "40444"
  sha256 arm:   "0c65244b1c2c4f455efeaa1f5710549a063d0ebccf786ad9f54a0a41fec9a699",
         intel: "1fb86dbcd7077490dbf8977534370a3c33938a1a7eacf013899e4063d0a1d831"

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
