cask "freecad-weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "39240"
  sha256 arm:   "566aba5570a4fbf49b88440d848ea6727a604b85f4647e97ffb24eaabf78a0bf",
         intel: "088d152ee08b309eb0d44e2d449868a9d9289de723bdc73fcfeef186a1d0e2b9"

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
