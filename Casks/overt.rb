cask "overt" do
  arch arm: "arm64", intel: "x64"

  version "0.4.0"
  sha256 arm:   "bfe9f8a15a3a1eeb18cfd593b6f8187bae26bbf9bc9febe50509d36f95e3ba7e",
         intel: "7e409a3a046d5942779068a057a875a32a8713b4c6dd372494cb4317f7e06cd2"

  url "https://github.com/GetOvert/Overt/releases/download/v#{version}/Overt-darwin-#{arch}-#{version}.zip",
      verified: "https://github.com/GetOvert/Overt"
  name "Overt"
  desc "Open app store"
  homepage "https://getovert.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Overt.app"

  zap trash: [
    "~/Library/Application Support/Overt",
    "~/Library/Application Support/OpenStore",
    "~/Library/Caches/Overt_v4",
    "~/Library/Caches/OpenStore_v3",
    "~/Library/Caches/OpenStore_v2",
    "~/Library/Caches/OpenStore_v1",
    "~/Library/Preferences/app.getovert.Overt.plist",
    "~/Library/Preferences/app.getopenstore.OpenStore.plist",
  ]
end
