class Tccp < Formula
  desc "CLI for running code on HPC clusters"
  homepage "https://seth-lupo.github.io/tccp"
  version "1.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Seth-Lupo/tccp/releases/download/v1.0.4/tccp-macos-arm64"
      sha256 "097f93effbe7d428e34d79871979ce90f6899903428c15763ab66bab62ffc24b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Seth-Lupo/tccp/releases/download/v1.0.4/tccp-linux-x64"
      sha256 "75c5826493f309c71a24d37eb2810f78c2cc975ad9833a60afbc80e5b964f439"
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
