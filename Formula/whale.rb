class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.42"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.42/whale-darwin-arm64.tar.gz"
      sha256 "54db7194c481771a87c3b01c2be7219bb5ae204ad04533c25ecaebdbda02af7a"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.42/whale-darwin-amd64.tar.gz"
      sha256 "29b7f0a303352a91bd71f41781c50d5a93a437efe4dc405020fa3e2fa8b264af"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.42/whale-linux-arm64.tar.gz"
      sha256 "334fda2b380edaf0645a51fec50f62b41ebf84d982a535a0546115fe6a7f188b"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.42/whale-linux-amd64.tar.gz"
      sha256 "b391b8159527325c83f5a537164c3b2c4300a6bb60b5272452d8aa885e1a0717"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
  end

  test do
    assert_match "v0.1.42", shell_output("#{bin}/whale --version")
  end
end
