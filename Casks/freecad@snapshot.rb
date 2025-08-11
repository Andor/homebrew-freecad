cask "freecad@snapshot" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "42885"
    sha256 "11beb255ec1e4a3b8f677e75156f293aee873ccaadc5e0ce590a272bc5f81bec"
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
