cask "freecad" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "1.1rc1"
  sha256 arm:   "116d348ad5adebbf480465dc593ec5514e25b31f0dad16587223eb0362512e1c",
         intel: "e3205c57ec548c477cc7216f9b9e32d809b4a0330e2e3112dfa626d3ea004079"

  url "https://github.com/FreeCAD/FreeCAD/releases/download/#{version}/FreeCAD_#{version}-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :ventura"

  app "FreeCAD.app", target: "FreeCAD-#{version}.app"

  zap trash: [
    "~/Library/Application Support/FreeCAD",
    "~/Library/Caches/FreeCAD",
    "~/Library/Preferences/com.freecad.FreeCAD.plist",
    "~/Library/Preferences/FreeCAD",
  ]
end
