class Tccp < Formula
  desc "CLI for running code on HPC clusters"
  homepage "https://seth-lupo.github.io/tccp"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Seth-Lupo/tccp/releases/download/v0.4.2/tccp-macos-arm64"
      sha256 "9cdcdd9a30155277e93835bd4dd175e4b3749d7dd01c1d921e68142db13c8552"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Seth-Lupo/tccp/releases/download/v0.4.2/tccp-linux-x64"
      sha256 "0f7c34c2833e04fd9f5d5c027e03ed888202fe122bdb242ef5bed55909997cfe"
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
