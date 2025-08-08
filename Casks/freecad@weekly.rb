cask "freecad@weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "2025.08.07"
    sha256 "f1ed64ea37adde1d552d83cac659c634ee1450615a8e77cdae236b3b02b99e76"
  end
  on_intel do
    version "2025.08.07"
    sha256 "58c8113bf3c7cd4aa548f8d3553515b0f99d239bad99795dc2c6c9d15e999966"
  end

  url "https://github.com/FreeCAD/FreeCAD/releases/download/weekly-#{version}/FreeCAD_weekly-#{version}-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
