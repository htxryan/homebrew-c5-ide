cask "c5-ide" do
  version "0.1.0"

  on_arm do
    sha256 "ec9d33e3df33a57beacc116e93125ff9ef5a4ee8d91f267cb42169b4b67acec8"
    url "https://github.com/htxryan/c5/releases/download/v0.1.0/c5-ide-0.1.0-mac-arm64.dmg"
  end

  on_intel do
    sha256 "7a3d5203d7516782202dde238af850b26c8ea32d14fb5f79f0a8cdaf567ac66b"
    url "https://github.com/htxryan/c5/releases/download/v0.1.0/c5-ide-0.1.0-mac-x64.dmg"
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
