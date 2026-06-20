class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/DeepSeek-Code-Whale"
  version "0.1.53"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.53/whale-darwin-arm64.tar.gz"
      sha256 "106e85af03d1d3829bfeffbae038263e4baa864fbaa91b6ee0fc858ae48fb086"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.53/whale-darwin-amd64.tar.gz"
      sha256 "f28373650a1147cbffd924d8ba4f65ddda24ee87abfdd5a4a38831a2575fb535"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.53/whale-linux-arm64.tar.gz"
      sha256 "371677664a01c6b0881103722ce7e27df7616e4f18b3c7954e736ef8553d5c1e"
    else
      url "https://github.com/usewhale/DeepSeek-Code-Whale/releases/download/v0.1.53/whale-linux-amd64.tar.gz"
      sha256 "8c570e56a06b52812d0ced40110f154e05f598e1c3aa2e7205965bd83d6ebed9"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
    libexec.install "runtime" if Dir.exist?("runtime")
  end

  test do
    assert_match "v0.1.53", shell_output("#{bin}/whale --version")
  end
end
