class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.52"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.52/whale-darwin-arm64.tar.gz"
      sha256 "53a179194e8fe7d8798c967bd09c71d6bc3f37f0f6391695c331db2a08d93c94"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.52/whale-darwin-amd64.tar.gz"
      sha256 "f22342c62a47c24ea20cd1d7db16c5d6a2dd03837dedda9668756995914dc687"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.52/whale-linux-arm64.tar.gz"
      sha256 "b5eff273b3c4504ebd52381f22322fc3ccc8bf4853d8445d8a423b89b5a3e3e3"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.52/whale-linux-amd64.tar.gz"
      sha256 "7832de67e140cd70b98e4867ee2f6276235006df8a76a8a22c8d94bea2fc1d3f"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
    libexec.install "runtime" if Dir.exist?("runtime")
  end

  test do
    assert_match "v0.1.52", shell_output("#{bin}/whale --version")
  end
end
