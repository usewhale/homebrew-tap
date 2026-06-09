class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.46"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.46/whale-darwin-arm64.tar.gz"
      sha256 "fc4d1d0819b22c114f8b6fd29fb63ab9d0bd2234fc1750b135f0c857b92cad06"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.46/whale-darwin-amd64.tar.gz"
      sha256 "c78c525d0c7ab9df0b5faf327b4f398a4aac6514cd7eacc5c79fd760595a9412"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.46/whale-linux-arm64.tar.gz"
      sha256 "02ee62ea2d772235105b04b1e8111802150ab7310647848c146b5af4927f9ced"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.46/whale-linux-amd64.tar.gz"
      sha256 "3ca3fb51f70a05c9365d73fa2f7d5b81afb81e9fb2805fcdcdc2e9ac64d82c49"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
    libexec.install "runtime" if Dir.exist?("runtime")
  end

  test do
    assert_match "v0.1.46", shell_output("#{bin}/whale --version")
  end
end
