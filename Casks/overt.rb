cask "overt" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.4.0"

  url "https://github.com/GetOvert/Overt/releases/download/v#{version}/Overt-darwin-#{arch}-#{version}.zip",
      verified: "https://github.com/GetOvert/Overt"
  if Hardware::CPU.intel?
    sha256 "b9c6cd29b468dd741ef725a3479f74e6383e5a5c68195ba9f79809f5d30a0e2d"
  else
    sha256 "8dbfd13f1f4ce89e78c2c5ba13102df41c88bf6c81d183ac34fa92c98d08d14f"
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
