cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "42721"
    sha256 "714adbe33a22736e26ea954c103b1bc7555bf0568d0205727bd5e9930292b464"
  end
  on_intel do
    version "42721"
    sha256 "c6173b2a22bfaab896e22ed5d31fe820dae489d604d85d87b7e460bddf12813d"
  end

  url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/weekly-builds/FreeCAD_weekly-builds-#{version}-conda-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
