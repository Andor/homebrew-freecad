cask "freecad@weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "2025.11.20"
    sha256 "cd90d906890d7fb10dc65be4c74e7836712fa2d1c036f96a44a8fad5184307ba"
  end
  on_intel do
    version "2025.11.20"
    sha256 "00e9c881b844bf21ffb0c76be8a4c28280e02a59ae23b035fe8a6ca40a28ab5e"
  end

  url "https://github.com/FreeCAD/FreeCAD/releases/download/weekly-#{version}/FreeCAD_weekly-#{version}-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :big_sur"

  app "FreeCAD.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-rd", "com.apple.quarantine", "#{appdir}/FreeCAD.app"],
                   sudo: false
  end
end
