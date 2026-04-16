class Tccp < Formula
  desc "CLI for running code on HPC clusters"
  homepage "https://seth-lupo.github.io/tccp"
  version "1.0.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Seth-Lupo/tccp/releases/download/v1.0.8/tccp-macos-arm64"
      sha256 "f5a2de4edbb08842ebf0ec9268c93131eef8a5e66d12557ebd573ff46ef43b31"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Seth-Lupo/tccp/releases/download/v1.0.8/tccp-linux-x64"
      sha256 "567e98f9ed2fe8fa4053527af208716330351bb1e67898da488df188a2616039"
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
