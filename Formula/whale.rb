class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.57"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.57/whale-darwin-arm64.tar.gz"
      sha256 "1ff6cf299be5c002487241b6d3d41911aba167e016aff505668cce78b425f64b"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.57/whale-darwin-amd64.tar.gz"
      sha256 "666e6ae6718d4f05dcbecf7c6753a5366c30c455dc8351ae53c76a99396e1769"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.57/whale-linux-arm64.tar.gz"
      sha256 "c1eac850760cda002ada8faf3e8ffa3fb4dff85e0376f2d40aa2084ffe1b5390"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.57/whale-linux-amd64.tar.gz"
      sha256 "51123e5b38873277d4533b1020eddda3505b77f28e7d93cd4404f74736d6283d"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
    libexec.install "runtime" if Dir.exist?("runtime")
  end

  test do
    assert_match "v0.1.57", shell_output("#{bin}/whale --version")
  end
end
