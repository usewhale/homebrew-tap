class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.39"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.39/whale-darwin-arm64.tar.gz"
      sha256 "19a0bb26be9308db82f05d181b647c147fdac047d18a94180e7453f63fda8da2"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.39/whale-darwin-amd64.tar.gz"
      sha256 "b64e0dcbaa46c3e19da661f3f352421a31b070e382344787e474ffe998a5bbcc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.39/whale-linux-arm64.tar.gz"
      sha256 "c8d8cff437aed62c21ce49d88f1170602dd2d6b36734d3b5956abfbab3896bac"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.39/whale-linux-amd64.tar.gz"
      sha256 "9fa2bb1450f7b661cc4344e7c0f8feb6a88dd0c35a211febebc5bc6f93c45b3b"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
  end

  test do
    assert_match "v0.1.39", shell_output("#{bin}/whale --version")
  end
end
