class Codey < Formula
  desc "AI coding assistant for the terminal"
  homepage "https://github.com/tcdent/codey"
  version "0.1.0-rc.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tcdent/codey/releases/download/v#{version}/codey-darwin-arm64.tar.gz"
      sha256 "5e163f3e9ebce53f7ce506417b6609d3f2dfe1d82ee2415ca778dd9c9f5bcea2"

      def install
        bin.install "codey-darwin-arm64" => "codey"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tcdent/codey/releases/download/v#{version}/codey-linux-x86_64.tar.gz"
      sha256 "32ee6fbd25318ded97af43b48f727ebcfab7e7c97a03649e571a8673f0bc85ba"

      def install
        bin.install "codey-linux-x86_64" => "codey"
      end
    end
    on_arm do
      url "https://github.com/tcdent/codey/releases/download/v#{version}/codey-linux-arm64.tar.gz"
      sha256 "7667066f04a65df411f9b73c44f7955a211752078248ed6c7ab63d3dbcb4605d"

      def install
        bin.install "codey-linux-arm64" => "codey"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codey --version")
  end
end
