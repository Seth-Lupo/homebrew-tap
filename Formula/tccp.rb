class Tccp < Formula
  desc "CLI for running code on HPC clusters"
  homepage "https://seth-lupo.github.io/tccp"
  version "1.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Seth-Lupo/tccp/releases/download/v1.0.5/tccp-macos-arm64"
      sha256 "279670ab115b11ff7cada3420887bb7e800c449ae6ec570d7a44cd2fe883a0f6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Seth-Lupo/tccp/releases/download/v1.0.5/tccp-linux-x64"
      sha256 "d05f73edbc68ccf1650a88f6ec9d4751d9b95986b025ef02028a63989e594b67"
    end
  end

  def install
    binary = stable.url.split("/").last
    bin.install binary => "tccp"
  end

  test do
    assert_match "version", shell_output("#{bin}/tccp --version")
  end
end
