cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "42780"
    sha256 "78d5ac19b935b802f3677f43dc699b053c26f08416f6def9997544bf4c8570e0"
  end
  on_intel do
    version "42780"
    sha256 "d0fe6b66eb3d272e14c8838008f51e1ea009d44769d94f6d9059e8fe2367d8c0"
  end

  url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/weekly-builds/FreeCAD_weekly-builds-#{version}-conda-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
