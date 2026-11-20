cask "bowel" do
  version "0.4.6"
  sha256 "3aabe22cb312cc02295e47cda090ccde2b86441b353c9bc6c2ae1fc9d5bd6879"

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
