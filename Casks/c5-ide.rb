cask "c5-ide" do
  version "0.5.16"

  on_arm do
    sha256 "82c16696801d3fd1076941a8f52e1533acf44fe37f3e25bc2378b17a7bcab427"
    url "https://github.com/htxryan/c5/releases/download/v0.5.16/c5-ide-0.5.16-mac-arm64.dmg"
  end

  on_intel do
    sha256 "9571eb317068ed6511b6744b550013f18b030f0b6eca4499df4977172052da7c"
    url "https://github.com/htxryan/c5/releases/download/v0.5.16/c5-ide-0.5.16-mac-x64.dmg"
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
