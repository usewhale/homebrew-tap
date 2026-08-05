class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.64"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.64/whale-darwin-arm64.tar.gz"
      sha256 "c6db974383944ad65e6e9b3b50010ac090c3f2d4cd8ece8fee3036d7aea8305b"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.64/whale-darwin-amd64.tar.gz"
      sha256 "cde13991ff498daa06f47b0477ce8d69b75209e7cc4447db481ce46098e2c70c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.64/whale-linux-arm64.tar.gz"
      sha256 "8a28fca4d33e3cf0724c6768065c568195df9ade62413926edcd3b3983e7ec06"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.64/whale-linux-amd64.tar.gz"
      sha256 "b1009bf5d81a7baabd978c1c5531f3ee1d85f18bc263afcc234141c3f55451da"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
    libexec.install "runtime" if Dir.exist?("runtime")
  end

  test do
    assert_match "v0.1.64", shell_output("#{bin}/whale --version")
  end
end
