class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.48"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.48/whale-darwin-arm64.tar.gz"
      sha256 "3fd143dff156e5575cf8e0b0fc61c616b401c007cc767b295b5d5cf5089e890b"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.48/whale-darwin-amd64.tar.gz"
      sha256 "40e65c195a3c2d7aa6ddda98ecbf36db4cc587d54dd8370a4e1b5a09055c2273"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.48/whale-linux-arm64.tar.gz"
      sha256 "b426d1b11ef593a4fa0b4ce37ee00b672602af56ecd1958a79148de35b0f6e69"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.48/whale-linux-amd64.tar.gz"
      sha256 "b0141e5609d231a53f74e319df218959a89ad48bf12d669b1eaa8723c1515909"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
    libexec.install "runtime" if Dir.exist?("runtime")
  end

  test do
    assert_match "v0.1.48", shell_output("#{bin}/whale --version")
  end
end
