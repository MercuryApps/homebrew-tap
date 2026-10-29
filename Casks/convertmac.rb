cask "convertmac" do
  version "1.2.0"
  sha256 "a2251627057228fd26191dbc57a3f089847306f393e567b8f3af8beb9348ddb4"

  url "https://github.com/MercuryApps/convertmac/releases/download/v#{version}/ConvertMac-#{version}.dmg"
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
    "~/Library/Preferences/io.github.mercuryapps.ConvertMac.plist",
    "~/Library/Saved Application State/io.github.mercuryapps.ConvertMac.savedState",
  ]
end
