class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.33"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.33/whale-darwin-arm64.tar.gz"
      sha256 "838a06136d50a152c3a2bb1888bcb358848d70192d2ceeb658d00dc8f1ff8b60"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.33/whale-darwin-amd64.tar.gz"
      sha256 "b090696b93d23b53f9539bb2b65cd0b078f356024d176029ec02da2be5a7ae49"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.33/whale-linux-arm64.tar.gz"
      sha256 "c3ef1f2b46c42fc6bb8cbbb184dc1f00b2ae7c76ca988442eb93207d5c522efb"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.33/whale-linux-amd64.tar.gz"
      sha256 "ff87158b8d2ec89369edfdc6eb622a64d065d1b34cc597b3deef638b9460aefa"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
  end

  test do
    assert_match "v0.1.33", shell_output("#{bin}/whale --version")
  end
end
