class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.27"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.27/whale-darwin-arm64.tar.gz"
      sha256 "156f515b5a2c73d024d76844ff22d3cae251ee9e2487417051befa601e1d1108"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.27/whale-darwin-amd64.tar.gz"
      sha256 "5f1231ed8bfadb041cab171e827ea2c90003e5f8b95d268274c63ac5ebfc26f3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.27/whale-linux-arm64.tar.gz"
      sha256 "57282e034a876cd32f5fb087b2e53d561e747bf543a4d8b74c1d3af25bf34c99"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.27/whale-linux-amd64.tar.gz"
      sha256 "3d05a9416dfdea2888e02d5c3b3c111e912dbead42d9a2d9792c8967f89c6932"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
  end

  test do
    assert_match "v0.1.27", shell_output("#{bin}/whale --version")
  end
end
