class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.20/whale-darwin-arm64.tar.gz"
      sha256 "591ceeb8a97a1c99a23e47abdedcb47bd8088b39046cc91a7f6334202a90b062"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.20/whale-darwin-amd64.tar.gz"
      sha256 "740f3318cf2c412523a96db7d7b9eb75041bbc5a24306db4c002dc3386295a98"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.20/whale-linux-arm64.tar.gz"
      sha256 "3f7bd5a33f89f0153ec00eb3adb86be4e984beb89668f20de0abba111ef3b100"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.20/whale-linux-amd64.tar.gz"
      sha256 "ecfa0d36422d3cb0c6022f2b3e89495c0ca8a230675115b5412c8a0da5e31ac6"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
  end

  test do
    assert_match "v0.1.20", shell_output("#{bin}/whale --version")
  end
end
