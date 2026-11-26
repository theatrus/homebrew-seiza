cask "seiza-mac" do
  version "0.10.1"
  sha256 "d5ba580ee2a21a9c0b7ae0a0fc853e6ea46dafbfe1c528fcf78e7943276c75f6"

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

  # From 0.10.1 the app runs outside the sandbox; older releases kept
  # everything in the containers. The Seiza and fyi.Seiza.seiza support
  # folders are shared with other Seiza tools, so only the app's own
  # subfolders are removed.
  zap trash: [
    "~/Library/Application Scripts/fyi.seiza.mac",
    "~/Library/Application Scripts/fyi.seiza.mac.quicklook",
    "~/Library/Application Scripts/fyi.seiza.mac.thumbnail",
    "~/Library/Application Support/Seiza/CalibrationMasters",
    "~/Library/Application Support/Seiza/LiveStacks",
    "~/Library/Application Support/Seiza/Models",
    "~/Library/Caches/fyi.seiza.mac",
    "~/Library/Containers/fyi.seiza.mac",
    "~/Library/Containers/fyi.seiza.mac.quicklook",
    "~/Library/Containers/fyi.seiza.mac.thumbnail",
    "~/Library/HTTPStorages/fyi.seiza.mac",
    "~/Library/Preferences/fyi.seiza.mac.plist",
    "~/Library/Saved Application State/fyi.seiza.mac.savedState",
  ]
end
