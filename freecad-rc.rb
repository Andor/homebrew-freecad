cask "freecad-rc" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "1.0rc1"
  sha256 arm:   "499f1549e046ca1093f737d7f3b0cb5e378693353c4bfd652212427acd836a22",
         intel: "52a6bcbac0d7f0f9ad1d3facb1c356f19d5e763e84181ddb92048c4ad1fc822c"

  url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/#{version}/FreeCAD-1.0.0-conda-macOS-#{arch}-py311.dmg",
      verified: "github.com/FreeCAD/FreeCAD-Bundle/"

  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  conflicts_with cask: "homebrew/homebrew-cask/freecad"
  conflicts_with cask: "Andor/homebrew-freecad/freecad-weekly"
  depends_on macos: ">= :mojave"

  app "FreeCAD.app"
end