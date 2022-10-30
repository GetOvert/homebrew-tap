cask "overt" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.3.4"

  url "https://github.com/GetOvert/Overt/releases/download/v#{version}/Overt-darwin-#{arch}-#{version}.zip",
      verified: "https://github.com/GetOvert/Overt"
  if Hardware::CPU.intel?
    sha256 "c82a6e9f73dd0faf54e267d70275dbcc2d02f5a669a02c7eeffa41d7e934e7dc"
  else
    sha256 "a984dc587debea2d414e0cb3f2cbc933f3ec4c91152d1ced758450d177783405"
  end

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
