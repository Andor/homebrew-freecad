cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "40655"
  sha256 arm:   "1e9c59ada6f058edecd433f4d96b66b93d6360675ffe7f617f4dcded412725a1",
         intel: "3969af93ce58e1773c4b4ff906ded1f6c963a30b0d295f0719fa67011598dbbd"

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
