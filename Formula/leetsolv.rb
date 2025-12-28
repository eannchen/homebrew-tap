class Leetsolv < Formula
  desc "LeetCode spaced repetition learning tool"
  homepage "https://github.com/eannchen/leetsolv"
  version "v1.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/eannchen/leetsolv/releases/download/v1.1.1/leetsolv-darwin-arm64"
      sha256 "bd6dcf98e3c87044a8798c2a22690f80781237161ec66bff4865050a0a97cdd2"

      def install
        bin.install "leetsolv-darwin-arm64" => "leetsolv"
      end
    else
      url "https://github.com/eannchen/leetsolv/releases/download/v1.1.1/leetsolv-darwin-amd64"
      sha256 "47eb6576e535b56495286a36d2eec8ce78d6e1f3cf950e7ba72cec2e80e165ca"

      def install
        bin.install "leetsolv-darwin-amd64" => "leetsolv"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eannchen/leetsolv/releases/download/v1.1.1/leetsolv-linux-arm64"
      sha256 "0b762c998a67982550f1618af67822883005621c189223da4c125f9f19c3c2f6"

      def install
        bin.install "leetsolv-linux-arm64" => "leetsolv"
      end
    else
      url "https://github.com/eannchen/leetsolv/releases/download/v1.1.1/leetsolv-linux-amd64"
      sha256 "14f81b7f554901bcbca592af55247db71e6bcab313cfa3464bf91dee0fb102db"

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
