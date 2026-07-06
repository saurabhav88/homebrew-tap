cask "enviouswispr" do
  version "2.3.1"
  sha256 "508ea6b05651a8e933c68168e912125f46edcdb155adf8ba297823e38ca7e0df"

  url "https://github.com/saurabhav88/EnviousWispr/releases/download/v#{version}/EnviousWispr-#{version}.dmg",
      verified: "github.com/saurabhav88/EnviousWispr/"
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
