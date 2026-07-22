cask "murmur" do
  version "1.2.0"
  sha256 "073c68a9029bdf77c1f5948cec8fc9ea19d16718f869e3390dc6e1ea9f33243e"

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
