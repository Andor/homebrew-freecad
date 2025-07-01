cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "42461"
    sha256 "6d72e6051e992c3ed35882b73e89f34412ffa1b6b36459bdd74344adcef726e4"
  end
  on_intel do
    version "42461"
    sha256 "3b8eb7cf6a6d48c752526e0dab92c031964e8add80222eec8e14f242d875b443"
  end

  url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/weekly-builds/FreeCAD_weekly-builds-#{version}-conda-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
