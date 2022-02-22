cask "openstore" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.1.5"

  url "https://github.com/GetOpenStore/OpenStore/releases/download/v#{version}/OpenStore-darwin-#{arch}-#{version}.zip",
      verified: "https://github.com/GetOpenStore/OpenStore"
  if Hardware::CPU.intel?
    sha256 "8291e906daba464e1c26c2ffc11051e4766a2c01ad1f5339c8d5a76b245734e0"
  else
    sha256 "403b4e3e2e74b14baebe8d1881d238f30921c9c713e03d5d2ed6e19b9c0cbaf6"
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
