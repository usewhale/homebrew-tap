class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.56"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.56/whale-darwin-arm64.tar.gz"
      sha256 "2aae56eb04c996e3b2a2038bd400bfbed7a1a8d7431e1d6974943fc2c2a07993"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.56/whale-darwin-amd64.tar.gz"
      sha256 "025ee8e7ff4b5edcbe87c3d6dd24a5a65d0b91f671f5830f3b53a4d520ee55a2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.56/whale-linux-arm64.tar.gz"
      sha256 "ee4896392329d67d13850a087401b8c0ba0480c7b31d3c80eecdf8ae89de823b"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.56/whale-linux-amd64.tar.gz"
      sha256 "defdc88d88abbb8e9c0ee2cd80fde012dc4b88328340a4daa0bd8787a56c4201"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
    libexec.install "runtime" if Dir.exist?("runtime")
  end

  test do
    assert_match "v0.1.56", shell_output("#{bin}/whale --version")
  end
end
