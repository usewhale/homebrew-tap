class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.49"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.49/whale-darwin-arm64.tar.gz"
      sha256 "82ad4969b141bfbbbd5de2a5cd9b7c21add7ad7f839c7167a7a942c0df6954c9"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.49/whale-darwin-amd64.tar.gz"
      sha256 "acba0e797208ecf9c3365ecfb34c2f518697294d601fc282f21ce20451548fa5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.49/whale-linux-arm64.tar.gz"
      sha256 "84b5d356bdf8b55ecef9817c400a50678799eba43c7cad0dc57f131a5f56a40d"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.49/whale-linux-amd64.tar.gz"
      sha256 "0e8b3f5b3330094ab3e259411ec51278b7fcf39c1487e46958ade68a670c174b"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
    libexec.install "runtime" if Dir.exist?("runtime")
  end

  test do
    assert_match "v0.1.49", shell_output("#{bin}/whale --version")
  end
end
