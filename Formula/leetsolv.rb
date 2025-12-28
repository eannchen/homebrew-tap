class Leetsolv < Formula
  desc "LeetCode spaced repetition learning tool"
  homepage "https://github.com/eannchen/leetsolv"
  version "v1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/eannchen/leetsolv/releases/download/v1.1.0/leetsolv-darwin-arm64"
      sha256 "95bc320331696b524e5765d37c829add1f247fa894a3e8cb52f36949fe2a3d75"

      def install
        bin.install "leetsolv-darwin-arm64" => "leetsolv"
      end
    else
      url "https://github.com/eannchen/leetsolv/releases/download/v1.1.0/leetsolv-darwin-amd64"
      sha256 "02b1c3c918f40258165e74c88a76cfac2df7886c262fa4278edb090d344b30ec"

      def install
        bin.install "leetsolv-darwin-amd64" => "leetsolv"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eannchen/leetsolv/releases/download/v1.1.0/leetsolv-linux-arm64"
      sha256 "38b845804b790cf2e878fbe270a63902f1def83ddca36aa0722dfc431aec8ddf"

      def install
        bin.install "leetsolv-linux-arm64" => "leetsolv"
      end
    else
      url "https://github.com/eannchen/leetsolv/releases/download/v1.1.0/leetsolv-linux-amd64"
      sha256 "f8a6276c38d44787a26ea0b3d31e31bd87167f68d65e06f4dfcb10e2a209a367"

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
