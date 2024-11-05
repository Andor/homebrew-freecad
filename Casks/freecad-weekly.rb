cask "freecad-weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "39127"
  sha256 arm:   "a2bd5b113817b2237d85fa223aceba594898bf6065f3f1be5e6dc6a2c79d058d",
         intel: "626de02f4c6a901ce40b72e19baecee6010b80e84f9292ff3af6d0ae675d0ceb"

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
