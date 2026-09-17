class Gritpack < Formula
  desc "Multi-language package manager and package hub"
  homepage "https://frogfish.io"
  url "https://github.com/frogfishio/homebrew-gritpack/releases/download/v1.2.11/gritpack-1.2.11-aarch64-apple-darwin.tar.gz"
  version "1.2.11"
  sha256 "759bc8fd6d6d4e293179d53a12cc8ad5341e9b13e906665d2f5e80126cbd9762"
  license "LicenseRef-Frogfish-Software-Licence-1.0"

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
