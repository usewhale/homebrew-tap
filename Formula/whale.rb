class Whale < Formula
  desc "DeepSeek-native coding agent for the terminal"
  homepage "https://github.com/usewhale/whale"
  version "0.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/whale/releases/download/v0.1.8/whale-darwin-arm64.tar.gz"
      sha256 "18631747910c9439e868af20b37ed55a6384b5775a9aa882688c2fb73ed247a7"
    else
      url "https://github.com/usewhale/whale/releases/download/v0.1.8/whale-darwin-amd64.tar.gz"
      sha256 "2f3175b76bfc5e65b3fffa1df26b519b4c975c66d8973c4fcee8c7f043c547b6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/usewhale/whale/releases/download/v0.1.8/whale-linux-arm64.tar.gz"
      sha256 "d3537c68ce05faff6a2d0d4a83a927a8e0d8595c552af1391c8e715d5ebc8d3e"
    else
      url "https://github.com/usewhale/whale/releases/download/v0.1.8/whale-linux-amd64.tar.gz"
      sha256 "90fd9ccdb0098e91c78692aac8c5dd1bc4b677a8dff5dec0bec8536abcab8365"
    end
  end

  def install
    bin.install Dir["whale-*"].first => "whale"
  end

  test do
    assert_match "v0.1.8", shell_output("#{bin}/whale --version")
  end
end
