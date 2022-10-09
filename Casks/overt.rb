cask "overt" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.3.2"

  url "https://github.com/GetOvert/Overt/releases/download/v#{version}/Overt-darwin-#{arch}-#{version}.zip",
      verified: "https://github.com/GetOvert/Overt"
  if Hardware::CPU.intel?
    sha256 "de48f710b9e40b526028018c9182b405ee8e94d2116b7af0b3ffa08f49370177"
  else
    sha256 "8581ab627ef956a2aa97287ad744e6f2f4bbcdae6016c08116fe70f2422550a4"
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
