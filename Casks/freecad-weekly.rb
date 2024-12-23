cask "freecad-weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "39708"
  sha256 arm:   "802c8d248e1aa7ff81f363f30a04d728558ff729f42db9b5a708118f804e6075",
         intel: "eb25ebe3c2f5a716c48676e5ddbf311bd45f1ab6154b07423c0936da7d126b7f"

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
