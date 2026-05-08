class Treelines < Formula
  desc "Local code-intelligence CLI for Go, Python, and Rust"
  homepage "https://github.com/rpcarvs/treelines"
  license "GPL-3.0-only"
  version "0.4.1"

  on_macos do
    url "https://github.com/rpcarvs/treelines/releases/download/v0.4.1/treelines_0.4.1_darwin_arm64.tar.gz"
    sha256 "bb546119106e40b93e1a25345720459313f5654a9bd206dc612fd6df77f74dfe"
  end

  on_linux do
    url "https://github.com/rpcarvs/treelines/releases/download/v0.4.1/treelines_0.4.1_linux_amd64.tar.gz"
    sha256 "eb51ebbbf036ade482a701d764f999a28387aa245a040152fb832402a1286a36"
  end

  def install
    bin.install "treelines"
  end

  test do
    system "#{bin}/treelines", "-v"
  end
end
