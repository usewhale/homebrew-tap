class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.24/whale-darwin-arm64.tar.gz"
      sha256 "5e3516717397f00a5bbbed2fa191be716fa9843057d31633fb3057c57815b876"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.24/whale-darwin-amd64.tar.gz"
      sha256 "c4d31a4f4008132c0878505c8437ae3b3fdd49ec084f4ca18c377ce15338a1b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.24/whale-linux-arm64.tar.gz"
      sha256 "ac44377612d4a037d351a236be136ac8dafee692eac31c7aec779862cfb8a1b5"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.24/whale-linux-amd64.tar.gz"
      sha256 "972e1e89580e16e613857cc869dd8c83497355792004e207f5c68e157291a817"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
  end

  test do
    assert_match "v0.1.24", shell_output("#{bin}/whale --version")
  end
end
