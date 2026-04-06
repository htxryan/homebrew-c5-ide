cask "c5-ide" do
  version "0.1.0"
  sha256 "ec8feb7b633b9f0bd9ec8f2380fe3a805ec8587018ccecfdc2653926bf473ed2"

  url "https://github.com/htxryan/c5/releases/download/v0.1.0/c5-ide-0.1.0-arm64.dmg"
  name "c5-ide"
  desc "Electron GUI for Claude Code CLI"
  homepage "https://github.com/htxryan/c5"

  app "c5-ide.app"

  zap trash: [
    "~/Library/Application Support/c5-ide",
    "~/Library/Preferences/com.redhale.c5-ide.plist",
  ]
end
