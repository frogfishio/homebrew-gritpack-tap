class Gritpack < Formula
  desc "Multi-language package manager and package hub"
  homepage "https://frogfish.io"
  url "https://github.com/frogfishio/homebrew-gritpack/releases/download/v1.2.4/gritpack-1.2.4-aarch64-apple-darwin.tar.gz"
  version "1.2.4"
  sha256 "5990a645e05f6445e6c65967a7d81e2ea64922e159630ad6947b2f7ff5441d8e"
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
