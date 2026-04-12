class Tccp < Formula
  desc "CLI for running code on HPC clusters"
  homepage "https://seth-lupo.github.io/tccp"
  version "1.0.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Seth-Lupo/tccp/releases/download/v1.0.7/tccp-macos-arm64"
      sha256 "20dd3b55d946a5fc87d3a9f2f69fa9829b5add4e9ca8ffb455464612e5bcec85"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Seth-Lupo/tccp/releases/download/v1.0.7/tccp-linux-x64"
      sha256 "7c69d770c1b0f3271202c32b0b4473a7b14b875e65863d443810c643fdc14c1b"
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
