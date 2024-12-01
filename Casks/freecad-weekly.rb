cask "freecad-weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "39380"
  sha256 arm:   "15cbec8b046b59fb9d2336fc20d1677df646275b78c9caed3786bbbbd879553f",
         intel: "558662719db528c6a9eb4635f6cedd0d87b20251aa8a52c24cb52dbb7930ae8b"

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
