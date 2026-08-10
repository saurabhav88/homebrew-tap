cask "enviouswispr" do
  version "2.4.4"
  sha256 "7c31d887cebbe1a5fdc53f26d7282ceda1da504e33c0c4a910ded25dba27fb4c"

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
