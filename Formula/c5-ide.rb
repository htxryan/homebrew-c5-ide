class C5Ide < Formula
  desc "Electron GUI for Claude Code CLI"
  homepage "https://github.com/htxryan/c5"
  version "0.2.0"
  license "MIT"

  on_linux do
    url "https://github.com/htxryan/c5/releases/download/v0.2.0/c5-ide-0.2.0-linux-x86_64.AppImage"
    sha256 "6972d7fea6a6b70988321f9ad4f741e71ce5a9fbe1c4252b930a1e1f00d5e90a"
  end

  def install
    bin.install Dir["c5-ide-*-linux-x86_64.AppImage"] => "c5-ide"
    chmod 0755, bin/"c5-ide"
  end

  test do
    assert_predicate bin/"c5-ide", :exist?
  end
end
