class Tccp < Formula
  desc "CLI for running code on HPC clusters"
  homepage "https://seth-lupo.github.io/tccp"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Seth-Lupo/tccp/releases/download/v0.3.0/tccp-macos-arm64"
      sha256 "5406152baf2275bf4bd3db49a4c8aa069530aa690e72627b56213c150f8552b2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Seth-Lupo/tccp/releases/download/v0.3.0/tccp-linux-x64"
      sha256 "82b4690de536319143f8b64614d661be1ff03b5f9ff72a06598e592e9219795a"
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
