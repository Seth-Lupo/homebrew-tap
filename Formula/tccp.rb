class Tccp < Formula
  desc "CLI for running code on HPC clusters"
  homepage "https://seth-lupo.github.io/tccp"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Seth-Lupo/tccp/releases/download/v1.0.3/tccp-macos-arm64"
      sha256 "53e11e0332cc39f6b7367bb7ab0fe404dcea4850369c0dc2622b47dacb8de788"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Seth-Lupo/tccp/releases/download/v1.0.3/tccp-linux-x64"
      sha256 "c9abea673a32f9f3c62b6d8f6912bc91d6e70c0c0c169f6240f7d1f89f5152d1"
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
