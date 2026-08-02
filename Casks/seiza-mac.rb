cask "seiza-mac" do
  version "0.6.1"
  sha256 "05484d2053e97175b1355702e58ff9fadb07d44df9780b96cac2a61f0c854df1"

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
    "~/Library/Containers/fyi.seiza.mac",
    "~/Library/Containers/fyi.seiza.mac.quicklook",
    "~/Library/Saved Application State/fyi.seiza.mac.savedState",
  ]
end
