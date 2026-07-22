cask "murmur" do
  version "1.2.0"
  sha256 "028eb5a5cd29789317774ab2417ac57e73fb319b534532bfefb3586424102975"

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
