cask "c5-ide" do
  version "0.1.0"
  sha256 "7cda92816b583b8559a0d8ed84e065eea9b8952cb86ed22974183209997e17a8"

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
