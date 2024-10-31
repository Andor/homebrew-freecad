cask "freecad-weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "39092"
  sha256 arm:   "8be6c6db4437de3526f6644ab9b3cd8a1c3ab6254d3e5ac8735c05f193680ab0",
         intel: "80e187b32e287bee00bc7c9575c614c499d00fe168c3d40ba95ea227dd5dddb5"

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
