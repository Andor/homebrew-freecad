cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "42605"
    sha256 "a577bfd37a1371959c0d3b31571cd96d92b79b68b043c3c25644d4cdfe1890e2"
  end
  on_intel do
    version "42605"
    sha256 "08d24d5872351cf381ed586f29e60c43373a5886158146c9f85eb8cd75d7cbbd"
  end

  url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/weekly-builds/FreeCAD_weekly-builds-#{version}-conda-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
