class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.34"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.34/whale-darwin-arm64.tar.gz"
      sha256 "92e690008fb7fdf8b9058032ff3721248924fb4e81b1e713b766eb26023b99fb"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.34/whale-darwin-amd64.tar.gz"
      sha256 "f3373a721dfc6931c026747616ab6f64233178e7f79986142fcb00339079e1d3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.34/whale-linux-arm64.tar.gz"
      sha256 "6ac20cd762eb2c6c4c83221e299869aaa99c52651b30bc2559adcd5619f3baac"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.34/whale-linux-amd64.tar.gz"
      sha256 "946b05f8842c84a8f8e8ad0ca0efb56ab810fcb4991e98e50f71d73f5b400cc4"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
  end

  test do
    assert_match "v0.1.34", shell_output("#{bin}/whale --version")
  end
end
