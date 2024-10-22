cask "freecad-weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "39024"
  sha256 arm:   "e077a151adf9cb6caf740d8f37ca4b90d18e13e6d0e37576f97bf616d2ecfdc6",
         intel: "d8e0fc6934868039fa2a0c45313ba3ff86b512bfe6c845f8c4462cff1b2153af"

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
