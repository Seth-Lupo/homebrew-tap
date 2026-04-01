class Tccp < Formula
  desc "CLI for running code on HPC clusters"
  homepage "https://seth-lupo.github.io/tccp"
  version "0.4.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Seth-Lupo/tccp/releases/download/v0.4.4/tccp-macos-arm64"
      sha256 "723676dc029ff5e22df31dc5444d4e2f65f54c1979eab0936573efe13b60fdf0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Seth-Lupo/tccp/releases/download/v0.4.4/tccp-linux-x64"
      sha256 "8c5653ad2ba544e321e51aaa3627f8d8ee72ed2a7950158c53d1c298bd08c133"
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
