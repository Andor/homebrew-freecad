cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "41837"
  sha256 arm:   "fc86517419acd8d90b6e058e5f63f4f58777fabe406605badc7a65a4051533d0",
         intel: "0ffde156fa21725e42568c2ce190f390db4c39fe5b905d2be2e0596cff850484"

  url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/weekly-builds/FreeCAD_weekly-builds-#{version}-conda-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
