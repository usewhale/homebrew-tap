class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.58"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.58/whale-darwin-arm64.tar.gz"
      sha256 "2c0a2acc04d0a8e1b18f13a7a5b6c5e5d3da7e95fd77ec000ab97b7a9224b32f"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.58/whale-darwin-amd64.tar.gz"
      sha256 "da2f70828c35b45552082563370256aa685a671c3a10712287f35e22fde5e96f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.58/whale-linux-arm64.tar.gz"
      sha256 "9ca4ef1fd389dda1a5057dc9b01db13e53743dab30d4b044a882ab3b890600cd"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.58/whale-linux-amd64.tar.gz"
      sha256 "e4c4047236b1753e92d5f076d7205c32842a47f684b5f57d4d3bbb346c93d9ad"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
    libexec.install "runtime" if Dir.exist?("runtime")
  end

  test do
    assert_match "v0.1.58", shell_output("#{bin}/whale --version")
  end
end
