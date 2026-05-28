class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.23"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.23/whale-darwin-arm64.tar.gz"
      sha256 "0a3084f1b908b5580ed8ee7afd8af72492b8b8d51376757c8f776ede17e642df"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.23/whale-darwin-amd64.tar.gz"
      sha256 "3e80abac26e643db8a77a4236f6f6a6aa73ae9836598c023c841b26c0e78da3b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.23/whale-linux-arm64.tar.gz"
      sha256 "c04a57cf3ab54e37e8396763c4b763134fc0eec5d6ce8d2fc5fb05eb38a66181"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.23/whale-linux-amd64.tar.gz"
      sha256 "7fb43317342efd623ac0979e326ebaa984164cd0ea87e3a96016597f57aa2158"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
  end

  test do
    assert_match "v0.1.23", shell_output("#{bin}/whale --version")
  end
end
