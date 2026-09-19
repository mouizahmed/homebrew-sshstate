class Sshstate < Formula
  desc "Synchronize an SSH environment across machines"
  homepage "https://github.com/mouizahmed/sshstate"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/mouizahmed/sshstate/releases/download/v0.1.4/sshstate_0.1.4_darwin_arm64.tar.gz"
      sha256 "c7da32edcc2b4211a97a076e4513d2c956ffd769398248b9638a9b68f0f7b567"
    end
    on_intel do
      url "https://github.com/mouizahmed/sshstate/releases/download/v0.1.4/sshstate_0.1.4_darwin_amd64.tar.gz"
      sha256 "32a6f9c76d7c1d09b2c19ca2e29238b21900a881f4e11f2062835e66c38b2bad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mouizahmed/sshstate/releases/download/v0.1.4/sshstate_0.1.4_linux_arm64.tar.gz"
      sha256 "5aeb2501bef7e6119f0e427024538f4f2b24cd4fbe68db4f556672f1f848ea66"
    end
    on_intel do
      url "https://github.com/mouizahmed/sshstate/releases/download/v0.1.4/sshstate_0.1.4_linux_amd64.tar.gz"
      sha256 "895e4bf26a15e64a70fd88b7263702db8a1763ac68ab56043550e48b99627551"
    end
  end

  def install
    bin.install "sshstate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshstate version")
  end
end
