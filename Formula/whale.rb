class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.36"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.36/whale-darwin-arm64.tar.gz"
      sha256 "b808cb5adcbbafa85f757204851572d99404aee68f30c081d87c018bbe2f8fda"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.36/whale-darwin-amd64.tar.gz"
      sha256 "fb48f08015cddce027a91b6afb0e4f54877abbf20432fe89d2514624ee978108"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.36/whale-linux-arm64.tar.gz"
      sha256 "890ab0e94721b4ebf9d7d0a7da6d2eb703c59dcebee789fccc987e58baacd986"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.36/whale-linux-amd64.tar.gz"
      sha256 "56ace70789d962b845fbb38978baeb4436a91d6169da1e9b40f038f100d79cf0"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
  end

  test do
    assert_match "v0.1.36", shell_output("#{bin}/whale --version")
  end
end
