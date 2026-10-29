cask "video-audio-converter" do
  version "1.1.1"
  sha256 "c8553dd7c3909031e51c99c8991323edc2af97f3c6ba46f426eb8569353c0592"

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
