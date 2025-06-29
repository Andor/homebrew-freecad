cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "42340"
    sha256 "f99e179e9ef438798c83f42b88457a5090e9d9ddf57df88eb743a3d0f5ad93c3"
  end
  on_intel do
    version "42340"
    sha256 "411b9999b057c8485b7b6a4f03641cf3e77b2214c958411240739e4492912eb0"
  end

  url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/weekly-builds/FreeCAD_weekly-builds-#{version}-conda-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
