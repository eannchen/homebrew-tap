class Leetsolv < Formula
  desc "LeetCode spaced repetition learning tool"
  homepage "https://github.com/eannchen/leetsolv"
  version "v1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/eannchen/leetsolv/releases/download/v1.2.0/leetsolv-darwin-arm64"
      sha256 "abe9b03f6da35a3b98c44e55d79c2cd21dc31ec7fddd4a9f1a3e4f3f5b81dec2"

      def install
        bin.install "leetsolv-darwin-arm64" => "leetsolv"
      end
    else
      url "https://github.com/eannchen/leetsolv/releases/download/v1.2.0/leetsolv-darwin-amd64"
      sha256 "5a039321f54a2d7fed1aad4e73475c32fcf70208aab362ad403a438f042d11f0"

      def install
        bin.install "leetsolv-darwin-amd64" => "leetsolv"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/eannchen/leetsolv/releases/download/v1.2.0/leetsolv-linux-arm64"
      sha256 "b000d59691a22da80821e087fa4cb2b76aaf3a967adac864fee21b2cfda0cbdb"

      def install
        bin.install "leetsolv-linux-arm64" => "leetsolv"
      end
    else
      url "https://github.com/eannchen/leetsolv/releases/download/v1.2.0/leetsolv-linux-amd64"
      sha256 "5f8c9d188287042a5a3392cd6da45d4d5275708805f97d6ad1da788dabbf6df2"

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
