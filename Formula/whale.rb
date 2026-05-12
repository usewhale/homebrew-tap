class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/whale"
  version "0.1.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/whale/releases/download/v0.1.11/whale-darwin-arm64.tar.gz"
      sha256 "7d205bb4570fc935581c73713f4f06615ef989097529299bd3d482b3c3097e9d"
    else
      url "https://github.com/usewhale/whale/releases/download/v0.1.11/whale-darwin-amd64.tar.gz"
      sha256 "362c810407cda88e132279af2e9905dcc389337f331a89f42217268fb7c83dcc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/whale/releases/download/v0.1.11/whale-linux-arm64.tar.gz"
      sha256 "ba084c04a744f7295f057ccc395927a0253d77a6eb4ab1ba2b00e4e40399e788"
    else
      url "https://github.com/usewhale/whale/releases/download/v0.1.11/whale-linux-amd64.tar.gz"
      sha256 "ac945b7addbb26cb4321d7a95a53139a681d2b035309e8ea080ed2fe40339e9a"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
  end

  test do
    assert_match "v0.1.11", shell_output("#{bin}/whale --version")
  end
end
