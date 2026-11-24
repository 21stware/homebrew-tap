cask "bowel" do
  version "0.4.8"
  sha256 "39c3feea892655c67721c80979fea1348b3df208b4a9693542f5846dbdddaa03"

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
