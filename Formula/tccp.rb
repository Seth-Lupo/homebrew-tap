class Tccp < Formula
  desc "CLI for running code on HPC clusters"
  homepage "https://seth-lupo.github.io/tccp"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Seth-Lupo/tccp/releases/download/v0.3.4/tccp-macos-arm64"
      sha256 "e638c8386f34f547dc6d14e832d25c384cde2468a9742283397c45c6fd63abaf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Seth-Lupo/tccp/releases/download/v0.3.4/tccp-linux-x64"
      sha256 "aabfb5b25812fd6699a37605d151abe4e1b032536b74c8742e87d0dfbdc15887"
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
