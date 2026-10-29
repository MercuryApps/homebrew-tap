cask "convertmac" do
  version "1.2.0"
  sha256 "af6825687a4e53b71b8cb1cc59c8816508a0d96c96641b8f73f61f7dc37991a2"

  url "https://github.com/convertmac/convertmac/releases/download/v#{version}/ConvertMac-#{version}.dmg"
  name "ConvertMac"
  desc "Free video and audio converter with no ads, watermarks or subscriptions"
  homepage "https://convertmac.vercel.app"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "ConvertMac.app"

  zap trash: [
    "~/Library/Preferences/io.github.convertmac.ConvertMac.plist",
    "~/Library/Saved Application State/io.github.convertmac.ConvertMac.savedState",
  ]
end
