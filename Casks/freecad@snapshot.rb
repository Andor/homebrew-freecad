cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "42942"
    sha256 "f1831cfed64d07b7d086434737a90a23cf125d1f354db4527e57d29f590bc0d7"
  end
  on_intel do
    version "42942"
    sha256 "89d0ca6ea55b7c201ac12b25ab7e85bbcee7bea6c82b4cd4689c25a6cd739115"
  end

  url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/weekly-builds/FreeCAD_weekly-builds-#{version}-conda-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
