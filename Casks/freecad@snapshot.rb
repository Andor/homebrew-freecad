cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "42133"
    sha256 "1e9de2ef3d08ed39b136fe89a3f72a4572d3983a3459f6721b82dcf53ac8ff98"
  end
  on_intel do
    version "42095"
    sha256 "2c9fc393edeb5534e544a89d200cba950fdff5c9a73adaf6f1a954f7eb7ca99e"
  end

  url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/weekly-builds/FreeCAD_weekly-builds-#{version}-conda-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
