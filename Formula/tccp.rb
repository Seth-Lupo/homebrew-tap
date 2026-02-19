class Tccp < Formula
  desc "CLI for running code on HPC clusters"
  homepage "https://seth-lupo.github.io/tccp"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Seth-Lupo/tccp/releases/download/v0.3.3/tccp-macos-arm64"
      sha256 "fc52ab1e3e7915bb5ea340a8d060e2501918a9aaa0434d3f3b7b850dd96c3e02"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Seth-Lupo/tccp/releases/download/v0.3.3/tccp-linux-x64"
      sha256 "0e4905026521cbf800bed534a9a8ed475a96882c1286cb5f11658fbdbfb56cf7"
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
