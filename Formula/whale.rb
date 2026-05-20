class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.16/whale-darwin-arm64.tar.gz"
      sha256 "70b4aac6dcefefc14a9b471e256845b1fcd25ca5a873df6568646cef90929a5f"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.16/whale-darwin-amd64.tar.gz"
      sha256 "bd17c2ce4cf3b9ee0b7af9fdcee56a9b10519eb4b18151d725f3b680108c7ab9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.16/whale-linux-arm64.tar.gz"
      sha256 "2742f0b5bab42a71f44f4e79f3aec81d22fb940f823ddd067093505bbcbecd86"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.16/whale-linux-amd64.tar.gz"
      sha256 "fc0bf9aaad89bbfc22fc78f5a758fe0bb9c2555da13ad40bfbf3125a75cf437a"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
  end

  test do
    assert_match "v0.1.16", shell_output("#{bin}/whale --version")
  end
end
