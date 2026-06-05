class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.41"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.41/whale-darwin-arm64.tar.gz"
      sha256 "083ea5a65d6046138b914fa03f7be7b0c13b106d49de101bb25bd74989389d05"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.41/whale-darwin-amd64.tar.gz"
      sha256 "554993fc92cb73c337fb5bc0f692a6bccf8cfd624bbc070b81b36d2665eaa409"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.41/whale-linux-arm64.tar.gz"
      sha256 "83c57156492f2e789f15403c360399ec3af8f1554ab0bd46bf9d4b0ac6de01f5"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.41/whale-linux-amd64.tar.gz"
      sha256 "9ad8b92a72233a480bc3e125034ed9c48fd6bd8cbfb0998a68a19a14d6fdeea0"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
  end

  test do
    assert_match "v0.1.41", shell_output("#{bin}/whale --version")
  end
end
