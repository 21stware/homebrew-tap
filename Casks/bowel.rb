cask "bowel" do
  version "0.4.1"
  sha256 "52f414d2e5e409f2f88a271bf51d1fecfc9501b2c02f8d88af454051cf92efe0"

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
