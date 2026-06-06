class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.43"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.43/whale-darwin-arm64.tar.gz"
      sha256 "3fce67baf2503c111133670d7d3acb8ad10d31de51232123179b6c69fb0df75f"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.43/whale-darwin-amd64.tar.gz"
      sha256 "044637210adffd6fcf5464c7db63d29b33a9a909aedcc26aa1e8bd651857809d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.43/whale-linux-arm64.tar.gz"
      sha256 "6ce37eca733450b5493876307efe29c98f9834b21890a087229cd8c5199a8170"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.43/whale-linux-amd64.tar.gz"
      sha256 "0abea9f58da99f45979b98ea0a2846c4204cbb5580dcf267da86f6018f54bdae"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
  end

  test do
    assert_match "v0.1.43", shell_output("#{bin}/whale --version")
  end
end
