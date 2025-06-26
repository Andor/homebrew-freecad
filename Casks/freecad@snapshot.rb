cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "42325"
    sha256 "47b38b7d0301c53cd93131ebc45cb7e8123dd44abc17d484586b6bdccdbde2bd"
  end
  on_intel do
    version "42325"
    sha256 "f0ac93d598c8664a09d65b10a1ca51861e6255bb786438e08b4fef34630fe7a0"
  end

  url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/weekly-builds/FreeCAD_weekly-builds-#{version}-conda-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
