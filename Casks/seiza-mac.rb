cask "seiza-mac" do
  version "0.7.2"
  sha256 "1bf895d254ce3f033eca15cc5e1d7e06e22194ab50156c5a3fcbe644ae506cda"

  url "https://github.com/theatrus/seiza-mac/releases/download/v#{version}/Seiza-#{version}-universal.dmg"
  name "Seiza for Mac"
  desc "Native astronomy image viewer and plate solver"
  homepage "https://github.com/theatrus/seiza-mac"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Seiza.app"

  zap trash: [
    "~/Library/Application Scripts/fyi.seiza.mac",
    "~/Library/Application Scripts/fyi.seiza.mac.quicklook",
    "~/Library/Application Scripts/fyi.seiza.mac.thumbnail",
    "~/Library/Containers/fyi.seiza.mac",
    "~/Library/Containers/fyi.seiza.mac.quicklook",
    "~/Library/Containers/fyi.seiza.mac.thumbnail",
    "~/Library/Saved Application State/fyi.seiza.mac.savedState",
  ]
end
