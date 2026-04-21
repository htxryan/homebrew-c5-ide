cask "c5-ide" do
  version "0.5.18"

  on_arm do
    sha256 "55e761a4f0d649eafe890f1a25401f536ac0847897dbf8cc204c677441aad4df"
    url "https://github.com/htxryan/c5/releases/download/v0.5.18/c5-ide-0.5.18-mac-arm64.dmg"
  end

  on_intel do
    sha256 "52a30668f9f226e2ad8aa14d504e47f275d451278e33f0a3d101cb903c186040"
    url "https://github.com/htxryan/c5/releases/download/v0.5.18/c5-ide-0.5.18-mac-x64.dmg"
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
