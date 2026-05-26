class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.20/whale-darwin-arm64.tar.gz"
      sha256 "13052df4f62535aaf2031a971f839b24489a7ab7a5be8bdd6eb518fa02f05bcb"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.20/whale-darwin-amd64.tar.gz"
      sha256 "57baf967a9910bb15c45294654076ca47267b9e3ece214b216ce3fa38ece5270"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.20/whale-linux-arm64.tar.gz"
      sha256 "466d956834e4932fb53db10739de8ad8c6a3804559499c47acbc6349d8a5906c"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.20/whale-linux-amd64.tar.gz"
      sha256 "1a2c8b8445deebb918e3151687aa5500f7f29653bf6d5d6489d00d32dd41b4fa"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
  end

  test do
    assert_match "v0.1.20", shell_output("#{bin}/whale --version")
  end
end
