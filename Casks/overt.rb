cask "overt" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.2.1"

  url "https://github.com/GetOvert/Overt/releases/download/v#{version}/Overt-darwin-#{arch}-#{version}.zip",
      verified: "https://github.com/GetOvert/Overt"
  if Hardware::CPU.intel?
    sha256 "13498e9a47b5569abe2f177b866b93d9dbb08a3f11ee31b83767b060a8403e63"
  else
    sha256 "b0cde801d53e3e4a18d92b3e0decc03ee8d901e37fbc0258e5f37e86eda00704"
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
