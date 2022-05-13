cask "openstore" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.1.7"

  url "https://github.com/GetOpenStore/OpenStore/releases/download/v#{version}/OpenStore-darwin-#{arch}-#{version}.zip",
      verified: "https://github.com/GetOpenStore/OpenStore"
  if Hardware::CPU.intel?
    sha256 "92400cdaf8b9d1d9b93004416ea3bb0f0f7a8698a05405411243bf7edff479fc"
  else
    sha256 "edd900617db90f7b69065fdaa9942bd63c62a988c17945ae9869afa569d7a6b2"
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
