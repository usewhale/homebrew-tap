class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.59"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.59/whale-darwin-arm64.tar.gz"
      sha256 "fa76573b963dee831dd0a5e64e54fb6b073bcbb4a15dd72ecbe63888e2980e6c"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.59/whale-darwin-amd64.tar.gz"
      sha256 "351e231ec56a5ba8969f42d3a72efccddf62eae6d9bc0d49800ee9959dd70b2c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.59/whale-linux-arm64.tar.gz"
      sha256 "d23f5ff37ffcb9f751e3377226be010503737167e2e2b7eef29024b91de0e7b8"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.59/whale-linux-amd64.tar.gz"
      sha256 "305506ea6604e37866a9ab52e73536aff76469fad209ff1856da790935bae305"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
    libexec.install "runtime" if Dir.exist?("runtime")
  end

  test do
    assert_match "v0.1.59", shell_output("#{bin}/whale --version")
  end
end
