cask "seiza-mac" do
  version "0.7.3"
  sha256 "e1ed4adb1ef99852f1789cbc86f1d9971599dc941dda7220a8f4dac1740d1f5a"

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
