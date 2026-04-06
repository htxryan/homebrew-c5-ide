cask "c5-ide" do
  version "0.3.0"

  on_arm do
    sha256 "d680ef088927ed7eda1d990520f1567667ff805389d2ab43898092a4a04fed47"
    url "https://github.com/htxryan/c5/releases/download/v0.3.0/c5-ide-0.3.0-mac-arm64.dmg"
  end

  on_intel do
    sha256 "9c312faab585b93eca85bc59ba3b8be492d24bdd19e76eadfb4703c50fdc2b00"
    url "https://github.com/htxryan/c5/releases/download/v0.3.0/c5-ide-0.3.0-mac-x64.dmg"
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
