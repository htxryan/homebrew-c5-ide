class C5Ide < Formula
  desc "Electron GUI for Claude Code CLI"
  homepage "https://github.com/htxryan/c5"
  version "0.3.0"
  license "MIT"

  on_linux do
    url "https://github.com/htxryan/c5/releases/download/v0.3.0/c5-ide-0.3.0-linux-x86_64.AppImage"
    sha256 "07ed68df275d6b9c74a61cbddd061b3953b8f9ae6dbe5ad8046537dcd0d13a69"
  end

  def install
    bin.install Dir["c5-ide-*-linux-x86_64.AppImage"] => "c5-ide"
    chmod 0755, bin/"c5-ide"
  end

  test do
    assert_predicate bin/"c5-ide", :exist?
  end
end
