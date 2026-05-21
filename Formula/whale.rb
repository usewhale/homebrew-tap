class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.17/whale-darwin-arm64.tar.gz"
      sha256 "a460628c52c383b5c1476a88f0b39e6660aa5d0ece08858273da95bbd9042a42"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.17/whale-darwin-amd64.tar.gz"
      sha256 "c572a5f6e29156fa1d35fa65278d6041223c024564c85d4f621567f83c6e4f94"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.17/whale-linux-arm64.tar.gz"
      sha256 "f99ff6f0f024c244d5f0c27ed94602eed31e28a3dba6284d898c3aa4576effb4"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.17/whale-linux-amd64.tar.gz"
      sha256 "58db98f834a33e2475db352d7773e569d80b3c6acbd2b3d7cbe30adcdafa63a9"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
  end

  test do
    assert_match "v0.1.17", shell_output("#{bin}/whale --version")
  end
end
