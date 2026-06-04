class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.38"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.38/whale-darwin-arm64.tar.gz"
      sha256 "ff7a14e4c9fb6eb4762263e7af3c6955bff56ab6dc4ce369ddab3a72dcce0488"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.38/whale-darwin-amd64.tar.gz"
      sha256 "98c85e4f66906cac62a2462c880bbf5ee9ecd573a9aa53487817f7692db7988c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.38/whale-linux-arm64.tar.gz"
      sha256 "dea6fbaf6106769e80fde1071b243da4aa467a262621f1bce4dd7d12e59e7bcb"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.38/whale-linux-amd64.tar.gz"
      sha256 "8ccd6cee61b742e3b0b737f6cd97de23aebe22fc122f0e80601e120b7e5b86e6"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
  end

  test do
    assert_match "v0.1.38", shell_output("#{bin}/whale --version")
  end
end
