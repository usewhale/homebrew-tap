class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.61"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.61/whale-darwin-arm64.tar.gz"
      sha256 "d78ad092e0215085e6a15f89be5bdd8bc6b1709a4e8cbc2a9738bf49b06e8e50"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.61/whale-darwin-amd64.tar.gz"
      sha256 "46209039533c8c852adc60790ecfcb00e5849efa577ffa2b4bc73eca02f9da66"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.61/whale-linux-arm64.tar.gz"
      sha256 "a6882b0abc2313fb011c6f47c524705c98aec7935a5ffb0a8d40d55ba8d22671"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.61/whale-linux-amd64.tar.gz"
      sha256 "f55307208975b1753fce80cf8297730d47e9614d3b4bf7e52998704fbf60986c"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
    libexec.install "runtime" if Dir.exist?("runtime")
  end

  test do
    assert_match "v0.1.61", shell_output("#{bin}/whale --version")
  end
end
