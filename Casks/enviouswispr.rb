cask "enviouswispr" do
  version "2.5.3"
  sha256 "d1a407802b2ab13a1b5c336bed6a30cb6bcd65a54ef81c32f4ac9d68c1c9f4bf"

  url "https://github.com/saurabhav88/EnviousWispr/releases/download/v#{version}/EnviousWispr-#{version}.dmg"
  name "EnviousWispr"
  desc "Free, on-device AI dictation and speech-to-text"
  homepage "https://enviouswispr.com/"

  # App ships its own Sparkle updater; let it self-update so brew does not fight it.
  auto_updates true
  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "EnviousWispr.app"

  zap trash: [
    "~/Library/Application Support/EnviousWispr",
    "~/Library/Caches/EnviousWispr",
    "~/Library/Caches/FluidAudio",
    "~/Library/Logs/EnviousWispr",
    "~/Library/Preferences/com.enviouswispr.app.plist",
  ]
end
