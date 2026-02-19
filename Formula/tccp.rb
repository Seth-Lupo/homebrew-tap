class Tccp < Formula
  desc "CLI for running code on HPC clusters"
  homepage "https://seth-lupo.github.io/tccp"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/seth-lupo/tccp/releases/download/v#{version}/tccp-macos-arm64"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/seth-lupo/tccp/releases/download/v#{version}/tccp-linux-x64"
      sha256 "PLACEHOLDER"
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
