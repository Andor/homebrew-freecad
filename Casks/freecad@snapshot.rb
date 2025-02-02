cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "40041"
  sha256 arm:   "0c45a67c4d9cce6ed8f0b9265975948ef1d326ad49b3798ec502eb79f50de816",
         intel: "de4fbb593fb21f4da915b04f71ac8c9200f5e2e223584b8022b43ae97d7cfdc2"

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
