cask "freecad" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "1.0rc1"
  sha256 arm:   "499f1549e046ca1093f737d7f3b0cb5e378693353c4bfd652212427acd836a22",
         intel: "52a6bcbac0d7f0f9ad1d3facb1c356f19d5e763e84181ddb92048c4ad1fc822c"

  url "https://github.com/FreeCAD/FreeCAD-Bundle/releases/download/#{version}/FreeCAD-1.0.0-conda-macOS-#{arch}-py311.dmg",
      verified: "github.com/FreeCAD/FreeCAD-Bundle/"
  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  # Upstream uses GitHub releases to indicate that a version is released
  # (there's also sometimes a notable gap between the release being created
  # and the homepage being updated), so the `GithubLatest` strategy is necessary.
  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sierra"

  app "FreeCAD.app"

  zap trash: [
    "~/Library/Application Support/FreeCAD",
    "~/Library/Caches/FreeCAD",
    "~/Library/Preferences/com.freecad.FreeCAD.plist",
    "~/Library/Preferences/FreeCAD",
  ]
end
