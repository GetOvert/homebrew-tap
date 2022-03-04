cask "openstore" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.1.6"

  url "https://github.com/GetOpenStore/OpenStore/releases/download/v#{version}/OpenStore-darwin-#{arch}-#{version}.zip",
      verified: "https://github.com/GetOpenStore/OpenStore"
  if Hardware::CPU.intel?
    sha256 "cdaa4e44cb84b8b20505d686b0fa97eeb81c1c76f435a5768430c39e9e8b9089"
  else
    sha256 "2d106dfe1ea78513fa218371ed79670dbfc58cf69eac61b5c1f5870e60b0475f"
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
