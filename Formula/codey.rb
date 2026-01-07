class Codey < Formula
  desc "AI coding assistant for the terminal"
  homepage "https://github.com/tcdent/codey"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tcdent/codey/releases/download/v#{version}/codey-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER"  # TODO: Update after release

      def install
        bin.install "codey-darwin-arm64" => "codey"
      end
    end
    on_intel do
      url "https://github.com/tcdent/codey/releases/download/v#{version}/codey-darwin-x86_64.tar.gz"
      sha256 "PLACEHOLDER"  # TODO: Update after release

      def install
        bin.install "codey-darwin-x86_64" => "codey"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tcdent/codey/releases/download/v#{version}/codey-linux-x86_64.tar.gz"
      sha256 "PLACEHOLDER"  # TODO: Update after release

      def install
        bin.install "codey-linux-x86_64" => "codey"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codey --version")
  end
end
