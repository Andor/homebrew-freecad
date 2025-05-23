cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "2025.05.19"
  sha256 arm:   "8a8e3fee813f6a3f9cce2f32558170f52eaffd6edfa21485827d9595a1bc5a1a",

  url "https://github.com/FreeCAD/FreeCAD/releases/download/weekly-#{version}/FreeCAD_weekly-#{version}-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
