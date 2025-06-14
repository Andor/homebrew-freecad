cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "42149"
    sha256 "ddab47b0dd0d21090358292c343194cb86b34a0d0146c104067f696a55f81259"
  end
  on_intel do
    version "42149"
    sha256 "ab6eac9e937c52efbef3470bdf1815731b9fa2bb46c312bc08ff28b6fc136e20"
  end

  url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/weekly-builds/FreeCAD_weekly-builds-#{version}-conda-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
