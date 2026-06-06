cask "murmur" do
  version "1.1.0"
  sha256 "4bf8e35e0132be5803a53181679fabdf4c66fd3a696217a27bb082ae8f713f26"

  url "https://github.com/roshanshah11/murmur/releases/download/v#{version}/Murmur-#{version}.dmg"
  name "Murmur"
  desc "Local-first macOS voice typing — double-tap fn, speak, paste"
  homepage "https://github.com/roshanshah11/murmur"

  depends_on macos: ">= :ventura"
  auto_updates true

  app "Murmur.app"

  zap trash: [
    "~/Library/Application Support/Murmur",
    "~/Library/Logs/Murmur",
    "~/Library/Caches/Murmur",
    "~/Library/Preferences/com.murmur.app.plist",
    "~/Library/Saved Application State/com.murmur.app.savedState",
  ]
end
