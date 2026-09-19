# homebrew-sshstate

Homebrew tap for [sshstate](https://github.com/mouizahmed/sshstate).

```sh
brew tap mouizahmed/sshstate
brew trust --formula mouizahmed/sshstate/sshstate
brew install sshstate
```

Homebrew 7 refuses to load a formula from a third-party tap until it is
trusted, because a formula is Ruby that Homebrew executes. Trusting the single
formula is narrower than trusting the whole tap.

The formula installs sshstate's published release binary instead of compiling
during `brew install`. The release workflow builds that binary from the tested
commit with a fixed Go version, so users do not need Go installed and receive
the same upstream artifact through every supported installation method.
