cask "seiza-mac" do
  version "0.9.0"
  sha256 "c85723d539c1396f9cc7af95f11fb7956a9c28fbf6b53e7ae212fbdac3cafef7"

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
