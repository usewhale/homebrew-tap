class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/whale"
  version "0.1.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/whale/releases/download/v0.1.10/whale-darwin-arm64.tar.gz"
      sha256 "6a86e1cc7357d64bdb37efb3e421839e9215b63f35e96ce7cee19d84ec11f90d"
    else
      url "https://github.com/usewhale/whale/releases/download/v0.1.10/whale-darwin-amd64.tar.gz"
      sha256 "9cff4ab90803e8dcdb8b354648e266243287083125fcc8704c4cd76aaecfe3a2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/whale/releases/download/v0.1.10/whale-linux-arm64.tar.gz"
      sha256 "7253f0258c73514a80ce4364e089886d730de2948dfdfb2869628ad7fc7f6103"
    else
      url "https://github.com/usewhale/whale/releases/download/v0.1.10/whale-linux-amd64.tar.gz"
      sha256 "0130177f5a8de2efc0ba1e586e6ec7548ef97412a699eb84df34f5edcfbcd444"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
  end

  test do
    assert_match "v0.1.10", shell_output("#{bin}/whale --version")
  end
end
