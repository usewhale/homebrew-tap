class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.55"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.55/whale-darwin-arm64.tar.gz"
      sha256 "306ffb0c54c890ee3c337838159db32bdd5c2d4c13784cf278aa5f2b9494fe29"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.55/whale-darwin-amd64.tar.gz"
      sha256 "39b58b7b948be5d4cb529cd6a0ce1f20e6e3b09f799b14e7d3ec3bea3be42a7a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.55/whale-linux-arm64.tar.gz"
      sha256 "d4fa2ba2c5b9e7b4ff960c8ff7a9b2aed1143b66439115bb495f4a75a034a343"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.55/whale-linux-amd64.tar.gz"
      sha256 "7bf38424ab5417d3e17582f04f08fca20778a6a882f450278259eebc993389be"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
    libexec.install "runtime" if Dir.exist?("runtime")
  end

  test do
    assert_match "v0.1.55", shell_output("#{bin}/whale --version")
  end
end
