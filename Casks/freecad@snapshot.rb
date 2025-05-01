cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "41464"
  sha256 arm:   "65bac6f539c5ff694c242504d2f6fe8e17e68e2be668ef4f82b94d41f88eb0ee",
         intel: "edb4abd2b9d7442b79af3aa8c314360659eb87cea62469ee12fbebf0068676af"

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
