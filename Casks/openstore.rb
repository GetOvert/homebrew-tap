cask "openstore" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.2.0"

  url "https://github.com/GetOpenStore/OpenStore/releases/download/v#{version}/OpenStore-darwin-#{arch}-#{version}.zip",
      verified: "https://github.com/GetOpenStore/OpenStore"
  if Hardware::CPU.intel?
    sha256 "287f1e6b0218019117aad38f97639912c9cb9306c67028198ca8d9a47aee400d"
  else
    sha256 "231fd5e2dcb10fa3a9cf7a35d845b69dbfdbc7445e16ebee8420feaf33953e21"
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
    "~/Library/Caches/OpenStore_v2",
    "~/Library/Preferences/app.getopenstore.OpenStore.plist",
  ]
end
