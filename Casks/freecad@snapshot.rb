cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "42523"
    sha256 "734375a06d1a04ce5e6ef7dffae1a46fe9bf693b448f6f73f33332537a84b92b"
  end
  on_intel do
    version "42523"
    sha256 "07230ac2e8b8aba48fb782ad42c7b6a210ddb020d4a2243109fb8a34dc7571d9"
  end

  url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/weekly-builds/FreeCAD_weekly-builds-#{version}-conda-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
