class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.47"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.47/whale-darwin-arm64.tar.gz"
      sha256 "7bc1b8c6cb07e70598df9db344c15b05df0069089642f36b588a55f670ee9ebb"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.47/whale-darwin-amd64.tar.gz"
      sha256 "17b4ea357819f46dad31904d84f06e76d0bc6111ee8f3e94a7b8c3fd489ca471"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.47/whale-linux-arm64.tar.gz"
      sha256 "2a70f283349325a4960a69a39dc3fad03ddecfe84707826daf53a0c8e8a93b65"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.47/whale-linux-amd64.tar.gz"
      sha256 "4fc2b683d307da973a25592671d90a123a66c0b6656f1411a1ac677bba2ec60a"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
    libexec.install "runtime" if Dir.exist?("runtime")
  end

  test do
    assert_match "v0.1.47", shell_output("#{bin}/whale --version")
  end
end
