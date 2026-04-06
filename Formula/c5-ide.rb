class C5Ide < Formula
  desc "Electron GUI for Claude Code CLI"
  homepage "https://github.com/htxryan/c5"
  version "0.1.0"
  license "MIT"

  on_linux do
    url "https://github.com/htxryan/c5/releases/download/v0.1.0/c5-ide-0.1.0-x86_64.AppImage"
    sha256 "1b8de14b0db513aee2844ee6a87cb5d5624167d22d6e3a764d7fb6105af0c764"
  end

  def install
    bin.install Dir["c5-ide-*-x86_64.AppImage"] => "c5-ide"
    chmod 0755, bin/"c5-ide"
  end

  test do
    assert_predicate bin/"c5-ide", :exist?
  end
end
