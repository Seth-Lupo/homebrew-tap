class Tccp < Formula
  desc "CLI for running code on HPC clusters"
  homepage "https://seth-lupo.github.io/tccp"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Seth-Lupo/tccp/releases/download/v1.0.2/tccp-macos-arm64"
      sha256 "be6713b73bcd7f9642d2cc8829ea7bccca058e72f590626524fa8032ade8420e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Seth-Lupo/tccp/releases/download/v1.0.2/tccp-linux-x64"
      sha256 "04240e94b1b05096e161be6de73db3bd5393b1447482fb5a4e2d8b80f2855876"
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
