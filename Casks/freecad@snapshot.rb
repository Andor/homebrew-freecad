cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "41488"
  sha256 arm:   "848382b4c5b9f5ef7b740b4381ab4cadf2188c704b5f36fb405328ae75137100",
         intel: "c5103d432b489a4c6345f5acf1a4f58c47ac7e10ba97c170df22b07499524068"

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
