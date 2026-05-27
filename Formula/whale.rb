class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.21/whale-darwin-arm64.tar.gz"
      sha256 "e309e61c81e3f5aff9671e7f4640a7152dac3608710faea0bb0f2161b9a03a6c"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.21/whale-darwin-amd64.tar.gz"
      sha256 "b2e8e2fc579d089afe4089360df9d3540548aba47a07f0052de640b8b61c037e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.21/whale-linux-arm64.tar.gz"
      sha256 "2306a6836dade7c9bd8061f30e9d11b64442997a86df98eaa1e2294d4fac9c88"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.21/whale-linux-amd64.tar.gz"
      sha256 "34fdeeb20afdd3f49f085a7757eafbfc9968d876a3ed796bd30b9f0eeacd0468"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
  end

  test do
    assert_match "v0.1.21", shell_output("#{bin}/whale --version")
  end
end
