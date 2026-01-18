class Codey < Formula
  desc "AI coding assistant for the terminal"
  homepage "https://github.com/tcdent/codey"
  version "0.1.0-rc.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tcdent/codey/releases/download/v#{version}/codey-darwin-arm64.tar.gz"
      sha256 "c8efa1c78dd0b8ea72a5e8cbda58229c108544e301089c41b18463eddbf33c83"

      def install
        bin.install "codey-darwin-arm64" => "codey"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tcdent/codey/releases/download/v#{version}/codey-linux-x86_64.tar.gz"
      sha256 "fd73d739039a3d933b7aaf016d1f96ce93d0f7d83dbc58f5159b51e6f891117e"

      def install
        bin.install "codey-linux-x86_64" => "codey"
      end
    end
    on_arm do
      url "https://github.com/tcdent/codey/releases/download/v#{version}/codey-linux-arm64.tar.gz"
      sha256 "0d86c619e48e0ef8498f03fde3839bf237f894e84d4dd17d3a8456dfc5bddd61"

      def install
        bin.install "codey-linux-arm64" => "codey"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codey --version")
  end
end
