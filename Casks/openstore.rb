cask "openstore" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.1.2"

  url "https://github.com/GetOpenStore/OpenStore/releases/download/v#{version}/OpenStore-darwin-#{arch}-#{version}.zip",
      verified: "https://github.com/GetOpenStore/OpenStore"
  if Hardware::CPU.intel?
    sha256 "9b408867d9005f9ff8d553d9b7e82e5a9833d41dd70e357273abe06adbdcb0e0"
  else
    sha256 "8abd92ac1ee47b78b8e69f12fec784cc2adcfbb2b0a18cf82b907b8cebc946f8"
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
