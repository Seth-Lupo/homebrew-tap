class Tccp < Formula
  desc "CLI for running code on HPC clusters"
  homepage "https://seth-lupo.github.io/tccp"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Seth-Lupo/tccp/releases/download/v0.4.0/tccp-macos-arm64"
      sha256 "8c456949170367b888003cbfc02e3808ea393c8a7b26152f56a99bba2f4ef90c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Seth-Lupo/tccp/releases/download/v0.4.0/tccp-linux-x64"
      sha256 "a77499cc6ec09716484d7b736b37f624c33bb9d89e3bed5f2458c25d1970dab2"
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
