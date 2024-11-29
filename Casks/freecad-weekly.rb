cask "freecad-weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "39315"
  sha256 arm:   "d425d1c3907235a85c476b82f8b738cbaa25a571202bd096ab9cf9566e8bc1ab",
         intel: "9fcbb85fbd84d7a6cd77b7abdba3283d81fc56e1a755a4e3c9a45bc72cfbd663"

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
