cask "freecad-weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "38871"
  sha256 arm:   "fe949650d4605a7e03d2c0f33671afec253b9e681736f9e2ec35a7d89ea2527b",
         intel: "cfa64675f8fa72cae7b5e55fd94a22cc49747fb5edcb657de2d8f85ecc81d9ac"

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
