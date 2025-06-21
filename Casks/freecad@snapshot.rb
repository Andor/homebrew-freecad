cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "42203"
    sha256 "1b8a927d049b896dce0d4580557c9b044d1488be118bd56ddbf0864adc360072"
  end
  on_intel do
    version "42203"
    sha256 "95b5cbcd36ac2951cd839a44e7e2a9a77e186c88e7a87c0df99bffc44e68be59"
  end

  url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/weekly-builds/FreeCAD_weekly-builds-#{version}-conda-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
