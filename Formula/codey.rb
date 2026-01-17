class Codey < Formula
  desc "AI coding assistant for the terminal"
  homepage "https://github.com/tcdent/codey"
  version "0.1.0-rc.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tcdent/codey/releases/download/v#{version}/codey-darwin-arm64.tar.gz"
      sha256 "fdf85fe7df8630849e81440b2644f10a0c4dc51aed7d327aa2157d683d94e30a"

      def install
        bin.install "codey-darwin-arm64" => "codey"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tcdent/codey/releases/download/v#{version}/codey-linux-x86_64.tar.gz"
      sha256 "55d002ab6760566580527e35531f8298f0fa136cdbaa98f14732d5bdfb9b76b2"

      def install
        bin.install "codey-linux-x86_64" => "codey"
      end
    end
    on_arm do
      url "https://github.com/tcdent/codey/releases/download/v#{version}/codey-linux-arm64.tar.gz"
      sha256 "26e1edc936f508ccbf300cad2ea5d9661a4ea4ccec9cbf6d4735bc0338407b58"

      def install
        bin.install "codey-linux-arm64" => "codey"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codey --version")
  end
end
