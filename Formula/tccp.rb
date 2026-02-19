class Tccp < Formula
  desc "CLI for running code on HPC clusters"
  homepage "https://seth-lupo.github.io/tccp"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Seth-Lupo/tccp/releases/download/v0.3.1/tccp-macos-arm64"
      sha256 "89e935dbdb866372425dd4983b2a0b2162a348e409f17c47b0d0e907cbda953d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Seth-Lupo/tccp/releases/download/v0.3.1/tccp-linux-x64"
      sha256 "ab7449b6fd17f86542b873aa98847abc54ab87781ac8f0a66e7493d94ee0b10a"
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
