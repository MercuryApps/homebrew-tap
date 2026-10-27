cask "video-audio-converter" do
  version "1.1.0"
  sha256 "6a179963e53b28263b1f736d9dea5611811b9131be1a64fc26263a074da7899a"

  url "https://github.com/ashrinkm/video-audio-converter/releases/download/v#{version}/Video-Audio-Converter-#{version}.dmg"
  name "Video & Audio Converter"
  desc "Free video and audio converter with no ads, watermarks or subscriptions"
  homepage "https://github.com/ashrinkm/video-audio-converter"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Video & Audio Converter.app"

  zap trash: [
    "~/Library/Preferences/io.github.ashrinkm.VideoAudioConverter.plist",
    "~/Library/Saved Application State/io.github.ashrinkm.VideoAudioConverter.savedState",
  ]
end
