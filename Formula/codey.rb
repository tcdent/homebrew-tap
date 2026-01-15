class Codey < Formula
  desc "AI coding assistant for the terminal"
  homepage "https://github.com/tcdent/codey"
  version "0.1.0-rc.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tcdent/codey/releases/download/v#{version}/codey-darwin-arm64.tar.gz"
      sha256 "94c1d1ecd0760b4c77fe1c95cbb1db490a464b041b341265d5da570f212e7eb5"

      def install
        bin.install "codey-darwin-arm64" => "codey"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tcdent/codey/releases/download/v#{version}/codey-linux-x86_64.tar.gz"
      sha256 "10221647e426783abba26b719cae20b6d6a403aeaf09ac518bd45c811c64e13f"

      def install
        bin.install "codey-linux-x86_64" => "codey"
      end
    end
    on_arm do
      url "https://github.com/tcdent/codey/releases/download/v#{version}/codey-linux-arm64.tar.gz"
      sha256 "860b3b91610b3cde70eade5b299dbd685f501393a6034da80e78845d4987840e"

      def install
        bin.install "codey-linux-arm64" => "codey"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codey --version")
  end
end
