cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "42605"
    sha256 "3140ba9db9cfb107aadd05cfab6c72c9b29b32c042afb305240b7d00852c79ae"
  end
  on_intel do
    version "42605"
    sha256 "db332caea4eb38f3d4ce6674e4bbb883069eaf8ab6a74ba1500d60ce447340f1"
  end

  url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/weekly-builds/FreeCAD_weekly-builds-#{version}-conda-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
