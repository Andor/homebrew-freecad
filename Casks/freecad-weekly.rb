cask "freecad-weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "39057"
  sha256 arm:   "c9740e7bbe2c806f5246980ca1424515588de91b3c8b8bd79ec60b77ad8507d4",
         intel: "d8ed38bb51b654076e6c80446f2337b40a33efc76f54b7fa35c46a12a3396704"

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
