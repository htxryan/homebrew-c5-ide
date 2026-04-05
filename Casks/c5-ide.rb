cask "c5-ide" do
  version "0.1.0"
  sha256 "3b7d78d94b10ba75f35f065d4dec246896c6a74abf5bc548c040b2fe175c9620"

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
