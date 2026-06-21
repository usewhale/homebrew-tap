class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.54"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.54/whale-darwin-arm64.tar.gz"
      sha256 "891e32067d596e7f2b3d64b3c41468d41f6b7c83e636c5c285fdfc556c4d3f71"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.54/whale-darwin-amd64.tar.gz"
      sha256 "57f66fd2903b686b8544eeae17fc9ab02caa00a7e52c96df3feb8df5f8bbc84a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.54/whale-linux-arm64.tar.gz"
      sha256 "809850e94853fd2bca321d2fc9e90e9068b251c4eb89d8701d03a5eec7bdf61a"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.54/whale-linux-amd64.tar.gz"
      sha256 "6c92dc6f01b4f046ad566dfd4e1726cd5fbc5290454264da70577ffddfd9af99"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
    libexec.install "runtime" if Dir.exist?("runtime")
  end

  test do
    assert_match "v0.1.54", shell_output("#{bin}/whale --version")
  end
end
