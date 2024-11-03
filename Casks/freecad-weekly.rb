cask "freecad-weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "39100"
  sha256 arm:   "768a32677f0f96f0330e6d478c4bb5bdee62f1c92f63c3c15066b13db77cc5ef",
         intel: "3bf2874d2c34c50935e0a87af2f104a41b67a77982130840ebeb760542022a70"

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
