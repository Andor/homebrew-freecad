cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "42837"
    sha256 "1919915f808108fbba396c356edec085290a977f5bca475d341bb9315e622afe"
  end
  on_intel do
    version "42837"
    sha256 "a31ab53fc601277fb0a4d49dc606d530ad949b1efcc9159bce18fa455da9ca54"
  end

  url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/weekly-builds/FreeCAD_weekly-builds-#{version}-conda-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
