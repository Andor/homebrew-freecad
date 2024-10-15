cask "freecad-weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "38977"
  sha256 arm:   "e64266f970cc85c452b7f3a20ebc630821a10d224a81c0baaa910954c01c9f22",
         intel: "1406580536d583297202acf3f8b9f3bab46dc8b08e90cccabf5394beb9262f8f"

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
