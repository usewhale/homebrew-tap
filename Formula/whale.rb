class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.14/whale-darwin-arm64.tar.gz"
      sha256 "9650792df0e0d5b0ba6ffcfa6c444e6d3911c8bb7e54b62ac10e21780158905e"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.14/whale-darwin-amd64.tar.gz"
      sha256 "c8f131efc67a7d8f7e3cd3e337d96bab40e6471a2646e5c8cd39f0955cbfe16f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.14/whale-linux-arm64.tar.gz"
      sha256 "edeec1552bef69a44b8fa77b4f15a569b42e132955825f06567f0268753e9c93"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.14/whale-linux-amd64.tar.gz"
      sha256 "5ac56c96dd5b2946ba888f9aabdce217bed02825cac84ad8239f8ffdd707003e"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
  end

  test do
    assert_match "v0.1.14", shell_output("#{bin}/whale --version")
  end
end
