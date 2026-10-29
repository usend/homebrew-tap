class Usend < Formula
  desc "Command-line tool for uSend, the email API"
  homepage "https://usend.et/docs/tools/cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/usend/usend-cli/releases/download/v1.0.0/usend_darwin_arm64.tar.gz"
      sha256 "94fb64b67530bbab02c43d198a911f09975504b29564313e9e53213fbd1394a3"
    end
    on_intel do
      url "https://github.com/usend/usend-cli/releases/download/v1.0.0/usend_darwin_amd64.tar.gz"
      sha256 "9efac78f868e64d9212379b79a60e1d1cb4f836f31dad1209f1794c6dac078f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usend/usend-cli/releases/download/v1.0.0/usend_linux_arm64.tar.gz"
      sha256 "8775d05f832bb1d8845cd72d225303fcad4b015f2d52c359a043acf5594071a2"
    end
    on_intel do
      url "https://github.com/usend/usend-cli/releases/download/v1.0.0/usend_linux_amd64.tar.gz"
      sha256 "eb0918e7674682f9041f77eef7d00a49a8bd3faf368c3145bbee2303be811c9b"
    end
  end

  def install
    bin.install "usend"
  end

  test do
    system "#{bin}/usend", "version"
  end
end
