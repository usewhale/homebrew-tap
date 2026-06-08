class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.45"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.45/whale-darwin-arm64.tar.gz"
      sha256 "0b746d1efb8a3fa243a0f1c4e33a013ca45df9094e36b9c93352b12db08cb748"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.45/whale-darwin-amd64.tar.gz"
      sha256 "78b7b051fe54e963fb74f443ab8f51de1086ec812a5f34a66be86e836c87bbb4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.45/whale-linux-arm64.tar.gz"
      sha256 "4279a5879cf208e02e9012c63886a788e627f69d1b5103a31b339a5a440cd76e"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.45/whale-linux-amd64.tar.gz"
      sha256 "54c54408e996e376453087191eee45015ae44e56856e8d6d2793cbfa1af8c858"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
    libexec.install "runtime" if Dir.exist?("runtime")
  end

  test do
    assert_match "v0.1.45", shell_output("#{bin}/whale --version")
  end
end
