cask "c5-ide" do
  version "0.2.0"

  on_arm do
    sha256 "a1dd644e949a09fc8eeb19cb526f98e9b2800e56f661f710872172adbf5bea7b"
    url "https://github.com/htxryan/c5/releases/download/v0.2.0/c5-ide-0.2.0-mac-arm64.dmg"
  end

  on_intel do
    sha256 "81eb28e5ae553059d7266a75525df04830799e403b1fb2597fcc0480d07f9d8f"
    url "https://github.com/htxryan/c5/releases/download/v0.2.0/c5-ide-0.2.0-mac-x64.dmg"
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
