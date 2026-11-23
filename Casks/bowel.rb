cask "bowel" do
  version "0.4.7"
  sha256 "47e081807aab656607c3c5b5266489b066d2e85fc1924c6e9041ec05933dff6d"

  url "https://github.com/21stware/bowel/releases/download/v#{version}/bowel-#{version}-arm64.dmg"
  name "bowel"
  desc "Desktop client for mihomo"
  homepage "https://bowel.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "bowel.app"
  binary "#{appdir}/bowel.app/Contents/MacOS/bowel"

  uninstall quit: "dev.moho.app"

  zap trash: "~/Library/Application Support/bowel"
end
