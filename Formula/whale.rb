class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.18/whale-darwin-arm64.tar.gz"
      sha256 "898784df99b64b72ea03b2df203c506aed182755cbfea2565e240c4d75abe3f3"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.18/whale-darwin-amd64.tar.gz"
      sha256 "5e3b90bd6be59aabdf3e289d7cf87f209eaaf1d67a856c0d282ec39b1a8af937"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.18/whale-linux-arm64.tar.gz"
      sha256 "f4f714e29809d9418ddaeee369de28baac71dd384d6b614507d96f43499223bd"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.18/whale-linux-amd64.tar.gz"
      sha256 "4d039f84b8982da4797f35ba57c1206d91eee4fbf33313995fba47912a08912c"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
  end

  test do
    assert_match "v0.1.18", shell_output("#{bin}/whale --version")
  end
end
