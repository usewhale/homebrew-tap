class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/whale"
  version "0.1.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/whale/releases/download/v0.1.9/whale-darwin-arm64.tar.gz"
      sha256 "7adeb8d2b0da8f75b42d8199df43d9dc3e6e71bf1eba5770d4b219a1ab52792c"
    else
      url "https://github.com/usewhale/whale/releases/download/v0.1.9/whale-darwin-amd64.tar.gz"
      sha256 "223ae5e4f957985f4ee58097fcf52dfe6985ede7ba5b17ad530d64290455b368"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/whale/releases/download/v0.1.9/whale-linux-arm64.tar.gz"
      sha256 "f5a9017fb47efab5e0742db3218949cc11666e595894c8dd31f27943c355bc44"
    else
      url "https://github.com/usewhale/whale/releases/download/v0.1.9/whale-linux-amd64.tar.gz"
      sha256 "36282d4def5c08d2306e85ba67b0fdb46600974bbe646bb202fd60bba24b30d8"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
  end

  test do
    assert_match "v0.1.9", shell_output("#{bin}/whale --version")
  end
end
