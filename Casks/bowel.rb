cask "bowel" do
  version "0.3.0"
  sha256 "8cf121b8dd08db3cda21ada2aa3c99a50522ec8c9d365334b04df4328bf9c240"

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
