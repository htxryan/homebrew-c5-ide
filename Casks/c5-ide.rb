cask "c5-ide" do
  version "0.4.0"

  on_arm do
    sha256 "af13881ff2a9cb30c362767953ceb0824b39e724f19f4743ba5fced1868c0dc7"
    url "https://github.com/htxryan/c5/releases/download/v0.4.0/c5-ide-0.4.0-mac-arm64.dmg"
  end

  on_intel do
    sha256 "f2e48708738d7e90027c0c045d03e39ae5fb2c4be84c74239318a6530189e7d0"
    url "https://github.com/htxryan/c5/releases/download/v0.4.0/c5-ide-0.4.0-mac-x64.dmg"
  end

  name "c5-ide"
  desc "Electron GUI for Claude Code CLI"
  homepage "https://github.com/htxryan/c5"

  app "c5-ide.app"

  zap trash: [
    "~/Library/Application Support/c5-ide",
    "~/Library/Preferences/com.redhale.c5-ide.plist",
  ]
end
