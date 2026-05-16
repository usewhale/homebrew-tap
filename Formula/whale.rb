class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/whale"
  version "0.1.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/whale/releases/download/v0.1.13/whale-darwin-arm64.tar.gz"
      sha256 "d8cb3b4329db3ff2cdc1fae3bfc7fb1ac936d7072e0d44446e454a30f6899d23"
    else
      url "https://github.com/usewhale/whale/releases/download/v0.1.13/whale-darwin-amd64.tar.gz"
      sha256 "539baa11e24cde39d6ad004657162933a11174ff3d6e7576cf756d460ddaac5e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/whale/releases/download/v0.1.13/whale-linux-arm64.tar.gz"
      sha256 "23948574be5876e8c62a313ea5079b034a83c983997b93c8f3adb728edff91ec"
    else
      url "https://github.com/usewhale/whale/releases/download/v0.1.13/whale-linux-amd64.tar.gz"
      sha256 "28bc2e10c6914673d92bbe9da09d1d9d07752ad34b1e6333e238ad53c9999b3c"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
  end

  test do
    assert_match "v0.1.13", shell_output("#{bin}/whale --version")
  end
end
