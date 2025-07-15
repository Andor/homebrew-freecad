cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "42564"
    sha256 "8508c4aaac55f432a631871cd245b7d97ba0f63b9547d2f58b36856f9cf8647a"
  end
  on_intel do
    version "42564"
    sha256 "63a4a6b2dd824537f91416047851d33e76433b70e623ba30e7d9ecd51fa089b5"
  end

  url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/weekly-builds/FreeCAD_weekly-builds-#{version}-conda-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
