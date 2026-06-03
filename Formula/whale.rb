class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.37"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.37/whale-darwin-arm64.tar.gz"
      sha256 "63ed0684569053cdf104db218767ccf2e3bc5000101b87b2de6a6553efc8c26b"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.37/whale-darwin-amd64.tar.gz"
      sha256 "8b7a4ddd9efee247fb99db7e4e9a711739e8d4b2877c5a5c3e082a840c1bfa14"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.37/whale-linux-arm64.tar.gz"
      sha256 "49b1ffcb51e4941d8d050daa78138e729ba5aa393f70a45ab2fcb0ff631329b1"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.37/whale-linux-amd64.tar.gz"
      sha256 "9211cc6b73c69fe17e596808c6f7998761444351cd1f56fb5582613f86991b29"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
  end

  test do
    assert_match "v0.1.37", shell_output("#{bin}/whale --version")
  end
end
