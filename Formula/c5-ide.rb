class C5Ide < Formula
  desc "Electron GUI for Claude Code CLI"
  homepage "https://github.com/htxryan/c5"
  version "0.4.0"
  license "MIT"

  on_linux do
    url "https://github.com/htxryan/c5/releases/download/v0.4.0/c5-ide-0.4.0-linux-x86_64.AppImage"
    sha256 "5595a7b17dd442fe476e29befaea74b506679bbd5189aec26ed61a40299b7b8b"
  end

  def install
    bin.install Dir["c5-ide-*-linux-x86_64.AppImage"] => "c5-ide"
    chmod 0755, bin/"c5-ide"
  end

  test do
    assert_predicate bin/"c5-ide", :exist?
  end
end
