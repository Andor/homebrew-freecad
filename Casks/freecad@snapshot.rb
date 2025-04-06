cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "41138"
  sha256 arm:   "5ea2ee027bd10292316363f845c1be8d6f60c6ac4947604f71cd5b3e48298210",
         intel: "b5faec30454e58729d58728bfe5c0f1ee20c2e7204ea19f7b0e95ef6409fb17a"

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
