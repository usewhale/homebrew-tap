class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.28"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.28/whale-darwin-arm64.tar.gz"
      sha256 "7da0317189758401d342308c83701316b369af076eb76124ef8cc1738325cff3"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.28/whale-darwin-amd64.tar.gz"
      sha256 "70a2de676dec49c03476140023f35931c30fec9dc6462a816023e87dc4612232"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.28/whale-linux-arm64.tar.gz"
      sha256 "bdd513ced94e837f6e3af4997dec92bca9d35daf6a5d6520edfb15ab48261232"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.28/whale-linux-amd64.tar.gz"
      sha256 "0a9061086d45c78a8b0214ecdab9c89b14a7f61b14cf0fedee82e306ef8a5c48"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
  end

  test do
    assert_match "v0.1.28", shell_output("#{bin}/whale --version")
  end
end
