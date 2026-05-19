class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.15/whale-darwin-arm64.tar.gz"
      sha256 "e0b299e8022950b331b959b63c393c50a1de63d6d18b97b0492fc0617c33aeb9"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.15/whale-darwin-amd64.tar.gz"
      sha256 "98e0b00da916a4c6b1d1e5685c3fdca79d37c47af671b5b1bfe71e3b768d6cd1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.15/whale-linux-arm64.tar.gz"
      sha256 "5edee2131ce8def62c5648bc288fee3278dd0b8b189eae2de731bd8cffc8adb4"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.15/whale-linux-amd64.tar.gz"
      sha256 "7a7accea36067f52761e9506c1d97649c378ee79ca6b05e9430df95c50c6b1a0"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
  end

  test do
    assert_match "v0.1.15", shell_output("#{bin}/whale --version")
  end
end
