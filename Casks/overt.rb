cask "overt" do
  arch arm: "arm64", intel: "x64"

  version "0.5.0"
  sha256 arm:   "358f6cdab0ac4a37216478f2dd7b6feaf6da7099a5987b5c1edfd730d3e86ed5",
         intel: "bff2d85a768caf1dbcc60aac29700bc3ee4b1a6b7f2c6d45378ef3343ac22aa9"

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
