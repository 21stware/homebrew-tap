cask "bowel" do
  version "0.4.5"
  sha256 "81520929709da1b21a4edc3c7319bc829be1347255b732aabf1cc7b3e052699f"

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

  uninstall quit: "dev.moho.app"

  zap trash: "~/Library/Application Support/bowel"
end
