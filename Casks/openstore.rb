cask "openstore" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.1.0"

  url "https://github.com/GetOpenStore/OpenStore/releases/download/#{version}/OpenStore-darwin-#{arch}-#{version}.zip",
      verified: "https://github.com/GetOpenStore/OpenStore"
  if Hardware::CPU.intel?
    sha256 "e1ffb2d28da9e6bbad567ec100af91c2dd3c487ee8c368cfc40c1103c4238576"
  else
    sha256 "bac22597da59a078b73ace371b866590db4f8a97598638ff1e53a33adf402a65"
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
