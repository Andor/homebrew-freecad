cask "freecad-weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "38643"
  sha256 arm:   "8356da0bc497d8694c74ef8f5a6c1160c5ec63fb4789fa6af1c8bdaf4bc495d1",
         intel: "f072aa07640b87be870483c3aa5573071c7a29ad7d002cfe1f487101b3ff93b1"

  url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/weekly-builds/FreeCAD-weekly-builds-#{version}-conda-macOS-#{arch}-py311.dmg",
      verified: "github.com/FreeCAD/FreeCAD-Bundle/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  conflicts_with cask: "homebrew/homebrew-cask/freecad"
  conflicts_with cask: "Andor/homebrew-freecad/freecad-weekly"
  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
