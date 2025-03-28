cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "40971"
  sha256 arm:   "3c21c4ba68034115abc8f14ea852740d388da1eedfeacd28bfe65f67bc8f4abf",
         intel: "820edcbe15f954873ad726038b683edc44ef1ce07c093146bcce8495f0dc5041"

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
