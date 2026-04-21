class C5Ide < Formula
  desc "Electron GUI for Claude Code CLI"
  homepage "https://github.com/htxryan/c5"
  version "0.5.18"
  license "MIT"

  on_linux do
    url "https://github.com/htxryan/c5/releases/download/v0.5.18/c5-ide-0.5.18-linux-x86_64.AppImage"
    sha256 "748cf30ed7a0cddef9fa32dcd26626a4936b991e2c280d28708759c517e0366f"
  end

  def install
    bin.install Dir["c5-ide-*-linux-x86_64.AppImage"] => "c5-ide"
    chmod 0755, bin/"c5-ide"
  end

  test do
    assert_predicate bin/"c5-ide", :exist?
  end
end
