class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.40"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.40/whale-darwin-arm64.tar.gz"
      sha256 "674059f845b76bb4d543ba210eceacb3a470be41f8d5738c36350d1878b1713d"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.40/whale-darwin-amd64.tar.gz"
      sha256 "c42643e5d554bcbaf348b85bf0e54a730cbca19e1e981404d63e4465a738080d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.40/whale-linux-arm64.tar.gz"
      sha256 "4709b753fd2a306eaf6219bcbfdbd7d39a2a8366da4bea3ade386e7ba024261b"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.40/whale-linux-amd64.tar.gz"
      sha256 "c9cad35980ea7d6195d744b0afe72f2beccf31e23380209944a65b5804411fe6"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
  end

  test do
    assert_match "v0.1.40", shell_output("#{bin}/whale --version")
  end
end
