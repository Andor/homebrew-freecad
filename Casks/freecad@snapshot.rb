cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "42006"
  sha256 arm:   "7d022ea07b0a91280d35b6ecd9d677ae3a64ea41202d003126312fde0b64bf2c",
         intel: "94fb8b4eb9178e80574675b0b14855b1d581014195e451492f70577e55e782b0"

  url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/weekly-builds/FreeCAD_weekly-builds-#{version}-conda-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
