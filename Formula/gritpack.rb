class Gritpack < Formula
  desc "Multi-language package manager and package hub"
  homepage "https://frogfish.io"
  url "https://github.com/frogfishio/homebrew-gritpack/releases/download/v1.2.5/gritpack-1.2.5-aarch64-apple-darwin.tar.gz"
  version "1.2.5"
  sha256 "b8b9cd41670fe667ee40c9b6cfdc23b7b2e97c126a1008f08c9ba8ba57192af7"
  license "LicenseRef-Gritpack-Proprietary"

  depends_on arch: :arm64

  def install
    bin.install "gritpack"
    prefix.install "LICENSE"
    doc.install "README.md"
  end

  test do
    assert_match "gritpack #{version}+build-", shell_output("#{bin}/gritpack --version")
  end
end
