cask "enviouswispr" do
  version "2.5.1"
  sha256 "40ae44d26307e3860b71ca629db3a90a97be6ffdea45481a521636a912bfff1c"

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
