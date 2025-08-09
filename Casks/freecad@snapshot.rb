cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "42885"
    sha256 "88b00621d7d80ce9f63eaf95f7bf908f19d36dd6fcdc9cc8bd2be697a60215f5"
  end
  on_intel do
    version "42885"
    sha256 "a37d9a0fab7b8641dadbc423ea21803bec693d95145348e4cd0a2a5365ca5fcb"
  end

  url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/weekly-builds/FreeCAD_weekly-builds-#{version}-conda-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
