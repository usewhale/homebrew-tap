class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.26"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.26/whale-darwin-arm64.tar.gz"
      sha256 "988b6828d25a5496d0a20638825b9f56e89429c50ba0eb497fc4939259e5db58"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.26/whale-darwin-amd64.tar.gz"
      sha256 "12e9399e6f7817f2d32ab3b3f7e9781c33903561bf4448e15721508d7be7fe97"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.26/whale-linux-arm64.tar.gz"
      sha256 "16aa222ae904bbd4ca0f3aac34b4ca524548809921e95f0b8049859b66b1ccda"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.26/whale-linux-amd64.tar.gz"
      sha256 "d5142bf7e92b956e5cd4f8f486b4ebed254541594fa6a5c672edf861e2a7647c"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
  end

  test do
    assert_match "v0.1.26", shell_output("#{bin}/whale --version")
  end
end
