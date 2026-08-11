class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.66"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.66/whale-darwin-arm64.tar.gz"
      sha256 "46915f8cf6d4eed702d66685fe54e1a314d7ad5b15ff97ff556ea393feef0e49"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.66/whale-darwin-amd64.tar.gz"
      sha256 "d17b3810d07044826009477adcbd34b0b6ce788ae87a07f8047899275e9aa5cc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.66/whale-linux-arm64.tar.gz"
      sha256 "3cf655fa78bb1411372d373087dc84806da24aaefb1adbb71c263510ad4d785d"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.66/whale-linux-amd64.tar.gz"
      sha256 "47ae965abd7d6e74554799e90b99363a823ffd032697c8f813b1b1216d3c1afd"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
    libexec.install "runtime" if Dir.exist?("runtime")
  end

  test do
    assert_match "v0.1.66", shell_output("#{bin}/whale --version")
  end
end
