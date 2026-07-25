cask "seiza-mac" do
  version "0.4.1"
  sha256 "fd8e6b3b283efccd9f4a4f4de15e279893f8b9fa85bb5e609f51c40c481f4b00"

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
