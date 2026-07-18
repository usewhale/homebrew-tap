class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.63"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.63/whale-darwin-arm64.tar.gz"
      sha256 "11880e26c913da659fac58bca4a8995661c44f298ec20aa4307d708abea21763"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.63/whale-darwin-amd64.tar.gz"
      sha256 "81fefd15f16b3182ec75adbd3ed57cc5c9e6ca01beca330bd8c08097bba5d47d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.63/whale-linux-arm64.tar.gz"
      sha256 "50bc4df7267d8f813410a90bf4c827801bfc246995add1c839997b21ee1c1b1c"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.63/whale-linux-amd64.tar.gz"
      sha256 "3994085c5276a3927e9ae7f6d55479bcb79c35f8e7e294b8a7f40f9207266138"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
    libexec.install "runtime" if Dir.exist?("runtime")
  end

  test do
    assert_match "v0.1.63", shell_output("#{bin}/whale --version")
  end
end
