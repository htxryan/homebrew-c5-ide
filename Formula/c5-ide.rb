class C5Ide < Formula
  desc "Electron GUI for Claude Code CLI"
  homepage "https://github.com/htxryan/c5"
  version "0.1.0"
  license "MIT"

  on_linux do
    url "https://github.com/htxryan/c5/releases/download/v0.1.0/c5-ide-0.1.0-x86_64.AppImage"
    sha256 "8b1687dbb27d61009334225121eb9cfcdf6c43e086aa1e00757089c10b8b3094"
  end

  def install
    bin.install Dir["c5-ide-*-x86_64.AppImage"] => "c5-ide"
    chmod 0755, bin/"c5-ide"
  end

  test do
    assert_predicate bin/"c5-ide", :exist?
  end
end
