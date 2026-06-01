class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.32"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.32/whale-darwin-arm64.tar.gz"
      sha256 "187b1b4192abebbeb4d51d789ad5b6c934b860794dcbe0404f6a2f21748a769a"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.32/whale-darwin-amd64.tar.gz"
      sha256 "487d5b27d6219dfb10fd2b711d666f92e01c09d5985beb70964dc6ce6c56b73c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.32/whale-linux-arm64.tar.gz"
      sha256 "b60372e59b319b9570006d55d2be9db6d57d1dbefdc7c0504b9868d3f27d6a5b"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.32/whale-linux-amd64.tar.gz"
      sha256 "f94ebbab564c90925104243f897e76704297a808bb58da2398ab2b4e09f27778"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
  end

  test do
    assert_match "v0.1.32", shell_output("#{bin}/whale --version")
  end
end
