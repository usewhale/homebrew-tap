class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.19/whale-darwin-arm64.tar.gz"
      sha256 "7617a309e1c3d07a61dd9e6db7a875cc3e5a93a9d3030332a38a2d66a6b08806"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.19/whale-darwin-amd64.tar.gz"
      sha256 "fff6b685328d0bd43b18087417d7df5b663bf081134c69f4e89b62ed8fba2aa8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.19/whale-linux-arm64.tar.gz"
      sha256 "78d870e839c733a04aea0fe75c93c326d2e1eaf80b41a86fa95d182f49585fbd"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.19/whale-linux-amd64.tar.gz"
      sha256 "9a9999fecdbe693614afc46308b898f4619f55ede82b378f54061342733b0af6"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
  end

  test do
    assert_match "v0.1.19", shell_output("#{bin}/whale --version")
  end
end
