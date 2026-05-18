cask "murmur" do
  version "1.0.0"
  sha256 "1b68e534c6b64b112d74cabf388936c21ce7352cebd72951ef23685fd5c0b209"

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
