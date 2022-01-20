cask "openstore" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.1.1"

  url "https://github.com/GetOpenStore/OpenStore/releases/download/v#{version}/OpenStore-darwin-#{arch}-#{version}.zip",
      verified: "https://github.com/GetOpenStore/OpenStore"
  if Hardware::CPU.intel?
    sha256 "1da388faa7d48cde167382a32f461de6ed530646a2fb6ed2840314b658ba0e87"
  else
    sha256 "a84dc995f8fd17f7b4ac80828d654ac8df6b292f6a6f65cc3b9dfcdd2ed9f8f6"
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
