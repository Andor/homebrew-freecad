cask "freecad@weekly" do
  arch arm: "arm64", intel: "intel-x86_64"

  on_arm do
    version "2025.08.13"
    sha256 "7a8ca8e97add0d8aa64b17ac347a44eff3867acbfe338c8a0e0e1fdeb1f60203"
  end
  on_intel do
    version "2025.08.13"
    sha256 "ecb08e2bdc328e60265b8195f9389c7738b1d25ec5eb7a0209635dc0593cec10"
  end

  url "https://github.com/FreeCAD/FreeCAD/releases/download/weekly-#{version}/FreeCAD_weekly-#{version}-macOS-#{arch}-py311.dmg",
    verified: "github.com/FreeCAD/FreeCAD/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end
