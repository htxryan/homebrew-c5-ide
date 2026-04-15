class C5Ide < Formula
  desc "Electron GUI for Claude Code CLI"
  homepage "https://github.com/htxryan/c5"
  version "0.5.16"
  license "MIT"

  on_linux do
    url "https://github.com/htxryan/c5/releases/download/v0.5.16/c5-ide-0.5.16-linux-x86_64.AppImage"
    sha256 "838574825a6bee940f74bdfe71e2dc5038b6d3e91c806b7722bac12d57c3b4bf"
  end

  def install
    bin.install Dir["c5-ide-*-linux-x86_64.AppImage"] => "c5-ide"
    chmod 0755, bin/"c5-ide"
  end

  test do
    assert_predicate bin/"c5-ide", :exist?
  end
end
