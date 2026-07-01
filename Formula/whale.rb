class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.62"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.62/whale-darwin-arm64.tar.gz"
      sha256 "3f8a229c9115dc0b32e34b1a4907d16ad5817196e5a468f99f23c0573e37e71d"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.62/whale-darwin-amd64.tar.gz"
      sha256 "1661a756a8022fe2ae08ab9a696c4838804fa95f27c007c4a0b6e2ae0e3793e6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.62/whale-linux-arm64.tar.gz"
      sha256 "81f23cffdc353e36b19c3ad5303f70ba9c1bd2022671ca9d97579f11c316acf5"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.62/whale-linux-amd64.tar.gz"
      sha256 "27f70d7dccacafc80fbb04ad5680104c390c4bb13a8c676ed4147d34d21aaba6"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
    libexec.install "runtime" if Dir.exist?("runtime")
  end

  test do
    assert_match "v0.1.62", shell_output("#{bin}/whale --version")
  end
end
