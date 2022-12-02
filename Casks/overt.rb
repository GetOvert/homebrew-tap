cask "overt" do
  arch arm: "arm64", intel: "x64"

  version "0.5.1"
  sha256 arm:   "6a63f7673c1096ded6630dd3e8fdd96a04aab6c5011eb66f27f2f14565fed203",
         intel: "5efaa2016d91ed2ee4fbf684103e30e70e03d4b00eff9fd7b1bf2c13bd843fb1"

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
