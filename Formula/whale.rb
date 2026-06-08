class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.44"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.44/whale-darwin-arm64.tar.gz"
      sha256 "aaa7f3c25fa472eecd5153cef141e2678700bbad1f878cb3588bdddff157b609"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.44/whale-darwin-amd64.tar.gz"
      sha256 "fa8d240c2dcdc8ff476980700340c5070d73da0c2c849930381a0547e880c7c0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.44/whale-linux-arm64.tar.gz"
      sha256 "bff81bea229b6d2df85a1e9a7efb1ee2445df75760a1281f259ccab709488031"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.44/whale-linux-amd64.tar.gz"
      sha256 "57b5659f37a8dd859a1ac2c9ab676fa629ef0f9c3464d56571e7c5fc768c134c"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
    libexec.install "runtime" if Dir.exist?("runtime")
  end

  test do
    assert_match "v0.1.44", shell_output("#{bin}/whale --version")
  end
end
