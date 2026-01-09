class Codey < Formula
  desc "AI coding assistant for the terminal"
  homepage "https://github.com/tcdent/codey"
  version "0.1.0-rc.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tcdent/codey/releases/download/v#{version}/codey-darwin-arm64.tar.gz"
      sha256 "f55b87c2e4d8e70f8b6d6e89d6246d87ac2a8c094b04d7a15c3a3338ef68947f"

      def install
        bin.install "codey-darwin-arm64" => "codey"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tcdent/codey/releases/download/v#{version}/codey-linux-x86_64.tar.gz"
      sha256 "0e5ec4f24561f91256f8dfbb9dcfaa5d2b898cf5841683d3df86b430c0076187"

      def install
        bin.install "codey-linux-x86_64" => "codey"
      end
    end
    on_arm do
      url "https://github.com/tcdent/codey/releases/download/v#{version}/codey-linux-arm64.tar.gz"
      sha256 "3af907b69d5d6497a62add817920127bd6adeb29c611c49f2b5febd36ee32335"

      def install
        bin.install "codey-linux-arm64" => "codey"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codey --version")
  end
end
