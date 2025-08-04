cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "42789"
    sha256 "925764e5b99603702a863db606f4112c3f5324f131eba64cbff410a3c37bdebb"
  end
  on_intel do
    version "42796"
    sha256 "761739081947e521261a9943607b367102f330f5844351bba04a2042696fcbf4"
  end

  url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/weekly-builds/FreeCAD_weekly-builds-#{version}-conda-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
