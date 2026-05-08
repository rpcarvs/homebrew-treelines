class Treelines < Formula
  desc "Local code-intelligence CLI for Go, Python, and Rust"
  homepage "https://github.com/rpcarvs/treelines"
  license "GPL-3.0-only"
  version "0.4.0"

  on_macos do
    url "https://github.com/rpcarvs/treelines/releases/download/v0.4.0/treelines_0.4.0_darwin_arm64.tar.gz"
    sha256 "2006860e3d93711710510bdac54ddd6019d5222f9dc9e875b5c925b8d3690ed9"
  end

  on_linux do
    url "https://github.com/rpcarvs/treelines/releases/download/v0.4.0/treelines_0.4.0_linux_amd64.tar.gz"
    sha256 "b8df5629286154a1c1ad17b221d9f1e2ff3b8b619c7e9cccd2e645a3dbee6776"
  end

  def install
    bin.install "treelines"
  end

  test do
    system "#{bin}/treelines", "-v"
  end
end
