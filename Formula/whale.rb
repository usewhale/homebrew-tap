class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.50"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.50/whale-darwin-arm64.tar.gz"
      sha256 "59ca481f4eb5e2c67ab1b819f4063e34b4c415282e9bb83694aaa85fc5b3f250"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.50/whale-darwin-amd64.tar.gz"
      sha256 "a448dd47174d1caba3714fdef80d6ca20cd799e03ed834aed8ae925af1c60aff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.50/whale-linux-arm64.tar.gz"
      sha256 "df8edaeb9c6be993b8145e6aa97c60b97cdba62974bef33fff12dc311fb45e67"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.50/whale-linux-amd64.tar.gz"
      sha256 "ce30d0a5c303041df1edeb1507d4b99b077c19266917eced19a50d508054eaf0"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
    libexec.install "runtime" if Dir.exist?("runtime")
  end

  test do
    assert_match "v0.1.50", shell_output("#{bin}/whale --version")
  end
end
