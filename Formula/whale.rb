class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.30"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.30/whale-darwin-arm64.tar.gz"
      sha256 "e3a9f6b75f7af4840b323698ebeb8cb018f4e635ff5a813605679a028e0f60c5"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.30/whale-darwin-amd64.tar.gz"
      sha256 "14d8a0b3d6b473d86222bcdf4dff6736a5c661757172300758aac8491930d984"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.30/whale-linux-arm64.tar.gz"
      sha256 "624ff6e2697fcd4ce73cec70a16a9e952942c1487e0a90f5ba85858fe401aeb3"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.30/whale-linux-amd64.tar.gz"
      sha256 "d5c2953d22bc2d00ad49d51cf95b886da5d4389f43cd54405d3ec6a2c3e5d318"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
  end

  test do
    assert_match "v0.1.30", shell_output("#{bin}/whale --version")
  end
end
