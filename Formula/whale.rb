class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.60"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.60/whale-darwin-arm64.tar.gz"
      sha256 "26b37b96b7c21a1df805ce7d630cd62d00e4c8bfe9a60bdd1a14469fad59ba7e"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.60/whale-darwin-amd64.tar.gz"
      sha256 "77f4f4a4ea72e6542689d2e1205eaed693c8e55819a09eeac5fbb43b6bc8d21c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.60/whale-linux-arm64.tar.gz"
      sha256 "e7aca77a8751bf34ec782c1e7b8a074f47e46f18714b13cab32a43578ee08122"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.60/whale-linux-amd64.tar.gz"
      sha256 "9b7aa4cc99cd181a761fa40f16c61e882447fd0715f75477444ac359d286afca"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
    libexec.install "runtime" if Dir.exist?("runtime")
  end

  test do
    assert_match "v0.1.60", shell_output("#{bin}/whale --version")
  end
end
