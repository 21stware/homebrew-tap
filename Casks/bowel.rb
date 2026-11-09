cask "bowel" do
  version "0.2.1"
  sha256 "cf08e35d3a871d48425c242e0f4d2b6d4a99f9cb20093e648437f9f3b7b9c466"

  url "https://github.com/21stware/bowel/releases/download/v#{version}/bowel-#{version}-arm64.dmg"
  name "bowel"
  desc "Desktop client for mihomo"
  homepage "https://21stware.github.io/bowel/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "bowel.app"

  uninstall quit: "dev.moho.app"

  zap trash: "~/Library/Application Support/bowel"
end
