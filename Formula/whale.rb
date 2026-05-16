class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/whale"
  version "0.1.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/whale/releases/download/v0.1.12/whale-darwin-arm64.tar.gz"
      sha256 "c26ec06f27d26efae90bf0c64dfab02ccfb5eefdf8afc151a037d1e177804ec3"
    else
      url "https://github.com/usewhale/whale/releases/download/v0.1.12/whale-darwin-amd64.tar.gz"
      sha256 "e409b0a3394b4d882e9dd52b1af05244c92c25d4ec5fd5d6a9d1e22688d94990"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/whale/releases/download/v0.1.12/whale-linux-arm64.tar.gz"
      sha256 "186049b8069466d9858615076203341654d9b7894009c4325c399600b3da192f"
    else
      url "https://github.com/usewhale/whale/releases/download/v0.1.12/whale-linux-amd64.tar.gz"
      sha256 "475c07e32ecb09d219513d2384ab38b24d1a73f6325f1f7ba5183fd078040dbe"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
  end

  test do
    assert_match "v0.1.12", shell_output("#{bin}/whale --version")
  end
end
