cask "seiza-mac" do
  version "0.4.0"
  sha256 "d7d93791f233b8ff14c95f56ae4dc9ce10a959b6515b906d5c8cb91eb4e21aae"

  url "https://github.com/theatrus/seiza-mac/releases/download/v#{version}/Seiza-#{version}-universal.dmg"
  name "Seiza for Mac"
  desc "Native astronomy image viewer and plate solver"
  homepage "https://github.com/theatrus/seiza-mac"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Seiza.app"

  zap trash: [
    "~/Library/Application Scripts/fyi.seiza.mac",
    "~/Library/Application Scripts/fyi.seiza.mac.quicklook",
    "~/Library/Containers/fyi.seiza.mac",
    "~/Library/Containers/fyi.seiza.mac.quicklook",
    "~/Library/Saved Application State/fyi.seiza.mac.savedState",
  ]
end
