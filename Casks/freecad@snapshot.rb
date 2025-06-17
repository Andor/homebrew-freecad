cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "42180"
    sha256 "401f72c41215ac84154014647dce8e917662157b757909403715153d9a9579f4"
  end
  on_intel do
    version "42180"
    sha256 "4103725a4d3c5f54c206dd31a39645b5426ff6456ab73074c3786d8b02ba2ce7"
  end

  url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/weekly-builds/FreeCAD_weekly-builds-#{version}-conda-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
