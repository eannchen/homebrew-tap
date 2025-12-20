class Leetsolv < Formula
  desc "LeetCode spaced repetition learning tool"
  homepage "https://github.com/eannchen/leetsolv"
  version "v1.0.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/eannchen/leetsolv/releases/download/v1.0.6/leetsolv-darwin-arm64"
      sha256 "b18e59b13517fbf1517722cb407bc02cf9eaf1326fb7c63941a61badcc289a3e"

      def install
        bin.install "leetsolv-darwin-arm64" => "leetsolv"
      end
    else
      url "https://github.com/eannchen/leetsolv/releases/download/v1.0.6/leetsolv-darwin-amd64"
      sha256 "f31a490f62ea336160e01e19f127f78cd78819704a897fa744eba262f4dde5d5"

      def install
        bin.install "leetsolv-darwin-amd64" => "leetsolv"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eannchen/leetsolv/releases/download/v1.0.6/leetsolv-linux-arm64"
      sha256 "69d89e7d2bfbf79586f52429499635f84592e0be71884a808299624f469f48eb"

      def install
        bin.install "leetsolv-linux-arm64" => "leetsolv"
      end
    else
      url "https://github.com/eannchen/leetsolv/releases/download/v1.0.6/leetsolv-linux-amd64"
      sha256 "ce889e717d61c5830475bd3469c4a61a04d93554579596b13e1fc401946baa6f"

      def install
        bin.install "leetsolv-linux-amd64" => "leetsolv"
      end
    end
  end

  def caveats
    <<~EOS
      💡 Previously installed via install.sh? Remove the old binary to avoid conflicts:

        sudo rm /usr/local/bin/leetsolv

      Otherwise, the old binary in /usr/local/bin may take precedence.
    EOS
  end

  test do
    system "#{bin}/leetsolv", "--help"
  end
end
