class Tccp < Formula
  desc "CLI for running code on HPC clusters"
  homepage "https://seth-lupo.github.io/tccp"
  version "1.0.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Seth-Lupo/tccp/releases/download/v1.0.6/tccp-macos-arm64"
      sha256 "dda3ccb04600e7beccd358c30c69ca8f830a3c5488a9ae853d259ae94281220d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Seth-Lupo/tccp/releases/download/v1.0.6/tccp-linux-x64"
      sha256 "420e2a491eab0d2e1223a42a92a5fb46d9ce07add90fff625137ab6cdff6f45f"
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
