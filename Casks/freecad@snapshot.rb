cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "42474"
    sha256 "a1bdf230a05916d657047aaae334f5ff20801bdb1bfe6535cc79ba8cfc51032a"
  end
  on_intel do
    version "42474"
    sha256 "fca14be35ab7d6097a679249021a521b756d725bcebd26165538e2358bb90a73"
  end

  url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/weekly-builds/FreeCAD_weekly-builds-#{version}-conda-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
