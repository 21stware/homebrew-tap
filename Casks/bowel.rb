cask "bowel" do
  version "0.4.10"
  sha256 "5d5820ed92c4d69c507070eb06b163c95ac1ccb96c5b0969d3af22aec6eb1b6e"

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
