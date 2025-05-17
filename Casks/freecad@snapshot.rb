cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "weekly-2025.05.13"
  sha256 arm:   "23f51a8b78a59422b643760ce6ebff9c74a7c849c56fe010a441a684006ba37a",
         intel: "c238c286ad3be8ef42dffdae7dcd4e5b0f48de021e12ea903aa063b21eae4501"

  url "https://github.com/FreeCAD/FreeCAD/releases/download/weekly-#{version}/FreeCAD_weekly-#{version}-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
