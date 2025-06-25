cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "42325"
    sha256 "7a3566e47c064517050d1669906eaed550b76754f238e6d640000e75139a175e"
  end
  on_intel do
    version "42325"
    sha256 "da5aac6901f520bd374a32be4643f4a31f2b1fa30f4017c2622acd5d8d1ed70f"
  end

  url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/weekly-builds/FreeCAD_weekly-builds-#{version}-conda-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
