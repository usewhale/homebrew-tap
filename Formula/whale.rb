class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.65"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.65/whale-darwin-arm64.tar.gz"
      sha256 "386d6efecfa30eb9fc4656df4130432a0df43b9167753324a521787237ef55e6"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.65/whale-darwin-amd64.tar.gz"
      sha256 "341795f41c0f4c52c5e221f49f263289096f361945e9e886d499dc6d64027396"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.65/whale-linux-arm64.tar.gz"
      sha256 "1b4403f8c1f63bee88f31ed529bb250de26f2bd7dac58e1de54ab70879b065c4"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.65/whale-linux-amd64.tar.gz"
      sha256 "4337f4fbba88d107b4109a98d0a501f484ad3e926135a1f827c37e855a976d91"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
    libexec.install "runtime" if Dir.exist?("runtime")
  end

  test do
    assert_match "v0.1.65", shell_output("#{bin}/whale --version")
  end
end
