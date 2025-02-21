cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "40303"
  sha256 arm:   "994bda70394bfe7a12b2d1906e8cb6473121f22533a819309097877ac9cf8a1b",
         intel: "9ce15e555765e37594f71dd772c88ecc8868da015dd9a57a2f81a4f340cf06ab"

  url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/weekly-builds/FreeCAD_weekly-builds-#{version}-conda-macOS-#{arch}-py311.dmg",
      verified: "github.com/FreeCAD/FreeCAD-Bundle/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  livecheck do
    url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/expanded_assets/weekly-builds"
    regex(/<a href="\/FreeCAD\/FreeCAD-Bundle\/releases\/download\/weekly-builds\/FreeCAD_weekly-builds-(\d+)-conda-macOS-arm64-py311\.dmg"/)
  end

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
