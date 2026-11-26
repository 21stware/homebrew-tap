cask "bowel" do
  version "0.4.9"
  sha256 "5627b7eea43874844e532ade8edb2edfc7545f9bed4d684039db84edeb92adcc"

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
