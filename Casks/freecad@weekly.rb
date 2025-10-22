cask "freecad@weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "2025.10.22"
    sha256 "46cdf47264722fb2123799692a71bc0228024ae4e78be6787e6f56d79edd9122"
  end
  on_intel do
    version "2025.10.15"
    sha256 "49d70bfb18c41ba1bb05912935c49158d1368847bea3693cb9adc689a673b562"
  end

  url "https://github.com/FreeCAD/FreeCAD/releases/download/weekly-#{version}/FreeCAD_weekly-#{version}-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  conflicts_with cask: [
    "freecad",
    "freecad@snapshot",
  ]
  depends_on macos: ">= :mojave"

  app "FreeCAD.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-rd", "com.apple.quarantine", "#{appdir}/FreeCAD.app"],
                   sudo: false
  end
end
