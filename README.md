# homebrew-sshstate

Homebrew tap for [sshstate](https://github.com/mouizahmed/sshstate).

```sh
brew tap mouizahmed/sshstate
brew install sshstate
```

The formula installs the release binary built by sshstate's pinned-toolchain
CI, rather than compiling from source. Building here would mean depending on
whatever version Homebrew's `go` formula currently points at, and sshstate
requires Go 1.27 or later — an older one fails on `crypto/mldsa`. It would also
discard the exact build the tests ran against.

`Formula/sshstate.rb` is written by `.github/workflows/update-formula.yml`,
which reads sshstate's latest release and its published `SHA256SUMS`. Nothing
pushes into this repository from outside it, so there is no cross-repository
token to hold.
