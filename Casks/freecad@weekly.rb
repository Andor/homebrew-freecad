cask "freecad@weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "2025.07.26"
    sha256 "ff7f0e3abf01bab4ee35a7644bbad7596b2018233223f4c6089d28e45276a422"
  end
  on_intel do
    version "2025.07.26"
    sha256 "3251bb73495047351493a7f3f61e69dac414bb7e22ef034d5e963dad400ba7c9"
  end

  url "https://github.com/FreeCAD/FreeCAD/releases/download/weekly-#{version}/FreeCAD_weekly-#{version}-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
