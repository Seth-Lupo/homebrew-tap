class Tccp < Formula
  desc "CLI for running code on HPC clusters"
  homepage "https://seth-lupo.github.io/tccp"
  version "0.3.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Seth-Lupo/tccp/releases/download/v0.3.6/tccp-macos-arm64"
      sha256 "bdeea9d389452c2b8e4510b57899c39d37d3f2a3d4a47b2934733c6ec623ce7e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Seth-Lupo/tccp/releases/download/v0.3.6/tccp-linux-x64"
      sha256 "24b1130b537975aadec4342fcbb288a87385c327ae1883f90e3fe3c42f7267a6"
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
