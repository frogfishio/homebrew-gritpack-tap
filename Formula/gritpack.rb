class Gritpack < Formula
  desc "Multi-language package manager and package hub"
  homepage "https://frogfish.io"
  url "https://github.com/frogfishio/homebrew-gritpack/releases/download/v1.2.3/gritpack-1.2.3-aarch64-apple-darwin.tar.gz"
  version "1.2.3"
  sha256 "95a7533f98fda6f7479e80b21c437d04c18ba311047b2fa5daf5e8558e26d3d7"
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
