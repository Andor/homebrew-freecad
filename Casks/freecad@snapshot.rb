cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "42975"
    sha256 "dc9788c8865166197543209008c5f621371c9bb0b0c3610d151db89bc27df912"
  end
  on_intel do
    version "42975"
    sha256 "726bd0c51e6cffd1962847ab5370f94b0380248eeb49d824cf23331fe69eee63"
  end

  url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/weekly-builds/FreeCAD_weekly-builds-#{version}-conda-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
