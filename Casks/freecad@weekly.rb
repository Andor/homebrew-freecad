cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "2025.07.14"
    sha256 "c464d6ff226a0918ef37e9b41c4c788dc40a04a2a12e47d1145a8d047c9a8539"
  end
  on_intel do
    version "2025.05.13"
    sha256 "c238c286ad3be8ef42dffdae7dcd4e5b0f48de021e12ea903aa063b21eae4501"
  end

  url "https://github.com/FreeCAD/FreeCAD/releases/download/weekly-#{version}/FreeCAD_weekly-#{version}-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
