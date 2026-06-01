class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.31"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.31/whale-darwin-arm64.tar.gz"
      sha256 "2555598dc881eb1aaf3a90f8ac98004fa40c04babd312a2ec44018d93a976708"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.31/whale-darwin-amd64.tar.gz"
      sha256 "bf4f1f9ece1a023c9ced9e235abefd7976b6a8f75a0f92738d6eb5c46c9d9230"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.31/whale-linux-arm64.tar.gz"
      sha256 "b7347d7cc15e7498580f0b83328d8bdc3cdf316836b3571c90fc7c167caa2e61"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.31/whale-linux-amd64.tar.gz"
      sha256 "33f9bc9c9a214095db1d03e3b649e171402228d0b19f9e4d1aa8181de1bb69d4"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
  end

  test do
    assert_match "v0.1.31", shell_output("#{bin}/whale --version")
  end
end
