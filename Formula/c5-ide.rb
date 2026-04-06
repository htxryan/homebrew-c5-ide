class C5Ide < Formula
  desc "Electron GUI for Claude Code CLI"
  homepage "https://github.com/htxryan/c5"
  version "0.1.0"
  license "MIT"

  on_linux do
    url "https://github.com/htxryan/c5/releases/download/v0.1.0/c5-ide-0.1.0-linux-x86_64.AppImage"
    sha256 "2bce8ef2c244a4266f19878f80f7f801b286a56b9df231aa87f177543b4b6934"
  end

  def install
    bin.install Dir["c5-ide-*-linux-x86_64.AppImage"] => "c5-ide"
    chmod 0755, bin/"c5-ide"
  end

  test do
    assert_predicate bin/"c5-ide", :exist?
  end
end
