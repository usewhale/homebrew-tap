class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.25/whale-darwin-arm64.tar.gz"
      sha256 "b34122c4cc903feadeb3e4c2a334470a48d033ec2e4254d7baae9625c9a5a61d"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.25/whale-darwin-amd64.tar.gz"
      sha256 "7e3dc49d5c1b3ecd219f43cb7727baa5bbb58eb47feeca10d438186f8e289462"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.25/whale-linux-arm64.tar.gz"
      sha256 "a7f99c7effe54864c79fdf9c36929cda9782f06f06793382d71c908cec5d8c3d"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.25/whale-linux-amd64.tar.gz"
      sha256 "d681df35e38aa69f865d76d65d1c9159447fd63e8353998d39df5bea963c8158"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
  end

  test do
    assert_match "v0.1.25", shell_output("#{bin}/whale --version")
  end
end
