cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "41573"
  sha256 arm:   "9a7937b9843daefbdf96c0439d5ced19a2e5f609833b16cc1237375f06c27a55",
         intel: "dc98706a91f60d8a9d84d4221a32be7b9eae504934fb2cd82c95f5f4d29486f4"

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
