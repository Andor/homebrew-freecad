cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "42653"
    sha256 "d478f4c5b388d0a3642ba51b22ea067652d71b6765b5951fb9203ca5add8a9b7"
  end
  on_intel do
    version "42653"
    sha256 "f1c3ec7978e349a8d53a4d49ade32e57ecaad0c0c4af63da80ecf9330b9b51e2"
  end

  url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/weekly-builds/FreeCAD_weekly-builds-#{version}-conda-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
