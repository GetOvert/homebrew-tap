cask "openstore" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.1.3"

  url "https://github.com/GetOpenStore/OpenStore/releases/download/v#{version}/OpenStore-darwin-#{arch}-#{version}.zip",
      verified: "https://github.com/GetOpenStore/OpenStore"
  if Hardware::CPU.intel?
    sha256 "c0602e6ccc924ec5bffff5b2f77d91aa38a983d00a5688025692b4aaf171e181"
  else
    sha256 "2e5d9f7e5ecd64401065189e333ea70be8ec7d5c3db7a5cfa548ebbb3aca7f4b"
  end

  name "OpenStore"
  desc "Open app store"
  homepage "https://getopenstore.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "OpenStore.app"

  zap trash: [
    "~/Library/Application Support/OpenStore",
    "~/Library/Caches/OpenStore_v1",
    "~/Library/Preferences/app.getopenstore.OpenStore.plist",
  ]
end
