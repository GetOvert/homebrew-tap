cask "overt" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.3.3"

  url "https://github.com/GetOvert/Overt/releases/download/v#{version}/Overt-darwin-#{arch}-#{version}.zip",
      verified: "https://github.com/GetOvert/Overt"
  if Hardware::CPU.intel?
    sha256 "2aca3f6d5cf62f26482d55e2ab9020b4afc8241d789344f4b2a5b284c214c22e"
  else
    sha256 "a3d1295888fb71686a435df0a666d91f1e1db6174edee4b1c8fbfda1ef7d8980"
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
