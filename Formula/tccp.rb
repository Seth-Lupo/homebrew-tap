class Tccp < Formula
  desc "CLI for running code on HPC clusters"
  homepage "https://seth-lupo.github.io/tccp"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Seth-Lupo/tccp/releases/download/v1.0.1/tccp-macos-arm64"
      sha256 "f1e3ead22076348abe595bc21c939f3243eff378b9b8d07a23eb60f45d1ea9b8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Seth-Lupo/tccp/releases/download/v1.0.1/tccp-linux-x64"
      sha256 "f5acf41a46d32b1e2842185a28ad5611ac2b01f452036a4089cba30dfafc9349"
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
