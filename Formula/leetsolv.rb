class Leetsolv < Formula
  desc "LeetCode spaced repetition learning tool"
  homepage "https://github.com/eannchen/leetsolv"
  version "v1.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/eannchen/leetsolv/releases/download/v1.0.5/leetsolv-darwin-arm64"
      sha256 "83d78f4c04a0ae682da74d32cd1a639bf232ddebadedc7475074e383ba1c7743"

      def install
        bin.install "leetsolv-darwin-arm64" => "leetsolv"
      end
    else
      url "https://github.com/eannchen/leetsolv/releases/download/v1.0.5/leetsolv-darwin-amd64"
      sha256 "1d61e6a3796d2d7a1fdc82a410ba803f1edad96b1786aa9a76e83ab1ed2ef8f1"

      def install
        bin.install "leetsolv-darwin-amd64" => "leetsolv"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eannchen/leetsolv/releases/download/v1.0.5/leetsolv-linux-arm64"
      sha256 "bd729b343a8c617365fd2cea950774a72b5b1c3e9d2ad4436a3570a1b07de9e3"

      def install
        bin.install "leetsolv-linux-arm64" => "leetsolv"
      end
    else
      url "https://github.com/eannchen/leetsolv/releases/download/v1.0.5/leetsolv-linux-amd64"
      sha256 "98998a9b75a791491ac1b8cd848087732707cfc4fb6dc469feedd534293ec6dd"

      def install
        bin.install "leetsolv-linux-amd64" => "leetsolv"
      end
    end
  end

  def caveats
    <<~EOS
      If you previously installed via install.sh, remove the old binary:
        sudo rm /usr/local/bin/leetsolv
    EOS
  end

  test do
    system "#{bin}/leetsolv", "--help"
  end
end