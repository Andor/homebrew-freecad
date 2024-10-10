cask "freecad-weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "38923"
  sha256 arm:   "a5b11bb3624e4d01c35f33c2477b41e1df1d844d4172b9755dcdc53af22a36d3",
         intel: "ca148c95cd9f5bc98566b59647a9a0406c9b459c2ee0ac7da8a5f32ad4e82f4e"

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
