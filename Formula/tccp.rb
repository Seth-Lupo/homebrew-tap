class Tccp < Formula
  desc "CLI for running code on HPC clusters"
  homepage "https://seth-lupo.github.io/tccp"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Seth-Lupo/tccp/releases/download/v0.3.5/tccp-macos-arm64"
      sha256 "12dfb278b5ef0b36b259a8ac0d60be1500b4f521dbf00f9042c92d4f825132a0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Seth-Lupo/tccp/releases/download/v0.3.5/tccp-linux-x64"
      sha256 "959d48d88bdc3b748c07eda5117aa7b0a2cb90246350445045d59b7d9a2345ed"
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
