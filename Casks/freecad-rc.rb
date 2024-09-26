cask "freecad-rc" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "1.0rc2"
  sha256 arm:   "5c7ad95c6098143422d4816d4b0a27813754135da7517c8d15d4b46967b8cdee",
         intel: "583df43b14e138b51fb689545b9e6de4768869ca0a11a8ca4fc5794593d5d473"

     # https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/1.0rc1/    FreeCAD_1.0.0-conda-macOS-arm64-py311.dmg
  url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/#{version}/FreeCAD_1.0.0-conda-macOS-#{arch}-py311.dmg",
      verified: "github.com/FreeCAD/FreeCAD-Bundle/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
