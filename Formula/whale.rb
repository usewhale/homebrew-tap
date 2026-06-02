class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.35"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.35/whale-darwin-arm64.tar.gz"
      sha256 "412b68ebd4368e57ed5d794b39c44ebd51c1b1c5f278c7a9339f73691cbc6f32"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.35/whale-darwin-amd64.tar.gz"
      sha256 "20bfe003daad000b477e7e4777508d8afcd246e12747f00d7e2d0833bdb97d9c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.35/whale-linux-arm64.tar.gz"
      sha256 "c455dfdc61995bdff3c68f75d76a4afa8e8e3608c93f37d6a1a6cd039e85519e"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.35/whale-linux-amd64.tar.gz"
      sha256 "8e0d3885b09d1b22f6052ba8b543cdb08a7388868dfaca5ad557b06144ff694d"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
  end

  test do
    assert_match "v0.1.35", shell_output("#{bin}/whale --version")
  end
end
