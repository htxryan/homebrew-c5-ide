cask "c5-ide" do
  version "0.1.0"
  sha256 "330334aeb8eb55fe65c2d61ea0253bd65014f2714d602569faa370305bf2c08c"

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
