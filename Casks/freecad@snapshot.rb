cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "42531"
    sha256 "2bf142e31f7e695c4c04ae0e269584190cf7cce5a337db3ac504c91f48ed6385"
  end
  on_intel do
    version "42531"
    sha256 "9132afbb7e44aec750c7b5c426c01135a3558820fe1d8fbc523143dea6b84f76"
  end

  url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/weekly-builds/FreeCAD_weekly-builds-#{version}-conda-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
