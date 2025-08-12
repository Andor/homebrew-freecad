cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "42885"
    sha256 "8bd6f24ec2a017b719f6bae1f8f0dd819fbf87eab232eb6d6ff5f8637ad444fb"
  end
  on_intel do
    version "42885"
    sha256 "137536376bbbd1cd166f1389277b3b1f37844ba49b49c5e53f5c93756ad03c5e"
  end

  url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/weekly-builds/FreeCAD_weekly-builds-#{version}-conda-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
