class PtdCli < Formula
  desc "CLI for PT-Depiler browser extension via Native Messaging"
  homepage "https://github.com/pt-plugins/ptd-cli"
  url "https://github.com/pt-plugins/ptd-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "8dbf588e0fe3b59c528f6ecfbd28e69abce61cd9ab47143d369112406bb708f4"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "ptd", shell_output("#{bin}/ptd --help")
  end
end
