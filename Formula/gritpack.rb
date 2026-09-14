class Gritpack < Formula
  desc "Multi-language package manager and package hub"
  homepage "https://frogfish.io"
  url "https://github.com/frogfishio/homebrew-gritpack/releases/download/v1.2.6/gritpack-1.2.6-aarch64-apple-darwin.tar.gz"
  version "1.2.6"
  sha256 "252c3af6bb3bfacfb179d2bdfe7b1eb92cfa17ab9cf91741e79df16bebd6616c"
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
