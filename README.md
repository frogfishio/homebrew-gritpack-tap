# Gritpack Homebrew Tap

This is the lean, Formula-only Homebrew tap for Gritpack. It deliberately does
not contain release archives, APT/RPM packages, or a same-named Cask.

Install Gritpack on an Apple Silicon Mac:

```sh
brew tap frogfishio/gritpack-tap
brew trust --formula frogfishio/gritpack-tap/gritpack
brew install --formula frogfishio/gritpack-tap/gritpack
gritpack --version
```

Upgrade later with:

```sh
brew update
brew upgrade --formula frogfishio/gritpack-tap/gritpack
```

If the legacy `frogfishio/gritpack` tap is installed, migrate with:

```sh
brew untap frogfishio/gritpack
brew tap frogfishio/gritpack-tap
brew trust --formula frogfishio/gritpack-tap/gritpack
brew install --formula frogfishio/gritpack-tap/gritpack
```

Homebrew uninstalls the legacy-tap Formula during the forced untap; the final
command reinstalls the same released version from the lean tap.

Release archives and signed Linux repositories remain in the public
[`frogfishio/homebrew-gritpack`](https://github.com/frogfishio/homebrew-gritpack)
distribution repository. Gritpack source code is maintained separately.
