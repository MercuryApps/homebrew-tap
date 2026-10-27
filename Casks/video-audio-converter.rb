cask "video-audio-converter" do
  version "1.0.0"
  sha256 "82cb73241760e3a25a3ef4968c1b7708b30bba66ad2e1d9a6b59745e6822facc"

  url "https://github.com/ashrinkm/video-audio-converter/releases/download/v#{version}/Video-Audio-Converter-#{version}.dmg"
  name "Video & Audio Converter"
  desc "Free video and audio converter with no ads, watermarks or subscriptions"
  homepage "https://github.com/ashrinkm/video-audio-converter"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Video & Audio Converter.app"

  zap trash: [
    "~/Library/Preferences/io.github.ashrinkm.VideoAudioConverter.plist",
    "~/Library/Saved Application State/io.github.ashrinkm.VideoAudioConverter.savedState",
  ]
end
