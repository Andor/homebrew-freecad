cask "freecad-weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "39503"
  sha256 arm:   "4874db32244bd9c17ccc997d7a0670a72b1f284a0f97e068ab1697762562d9d6",
         intel: "70b6123c9adfcdc4ec7d287ef8fc0d09f50f2e6ada360a2e1f638012e704c13a"

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
