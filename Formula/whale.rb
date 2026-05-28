class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.22/whale-darwin-arm64.tar.gz"
      sha256 "470c9eb9ffe5cff2c5f144a5d85d7d74cf39d1164f2ab21222bfc17d54929519"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.22/whale-darwin-amd64.tar.gz"
      sha256 "8fdfbd0b936e1e0912f828187419630fc0af8ebb290208d9387ca6ade6dd71d8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.22/whale-linux-arm64.tar.gz"
      sha256 "264d633775988c6bc2820fd17d6e2ab92087b0277bd69fd673cb2cb5a22194bc"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.22/whale-linux-amd64.tar.gz"
      sha256 "f6186cb7bcf776d29d9f27657cfb45fa1cbc81f11253a6224bad35d4b47e5884"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
  end

  test do
    assert_match "v0.1.22", shell_output("#{bin}/whale --version")
  end
end
