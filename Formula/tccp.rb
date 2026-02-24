class Tccp < Formula
  desc "CLI for running code on HPC clusters"
  homepage "https://seth-lupo.github.io/tccp"
  version "0.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Seth-Lupo/tccp/releases/download/v0.4.3/tccp-macos-arm64"
      sha256 "eabc5b40101e63767e47d132d099210ea4f7326a5ff49b1691094fc7d0e9bc75"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Seth-Lupo/tccp/releases/download/v0.4.3/tccp-linux-x64"
      sha256 "29092833bde99974fa9e150c4ca9c391e9df2adc0edc31728a83163770919da1"
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
