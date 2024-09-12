cask "freecad-weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "38684"
  sha256 arm:   "5e2ac160a493e02d1e92d6db1d4b0729674c476e23c5c9c6d7ceb4688694c018",
         intel: "6284aa2e9de1f5f6266bc2570166f08191a96b49768eabff156280ca52244026"

  url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/weekly-builds/FreeCAD_weekly-builds-#{version}-conda-macOS-#{arch}-py311.dmg",
      verified: "github.com/FreeCAD/FreeCAD-Bundle/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
