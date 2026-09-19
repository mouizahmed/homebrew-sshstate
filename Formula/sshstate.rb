class Sshstate < Formula
  desc "Synchronize an SSH environment across machines"
  homepage "https://github.com/mouizahmed/sshstate"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mouizahmed/sshstate/releases/download/v0.1.5/sshstate_0.1.5_darwin_arm64.tar.gz"
      sha256 "18fb3d004344883171659849b8fa4b67a3d33c5b4d0f20c4592ad678a0d9189d"
    end
    on_intel do
      url "https://github.com/mouizahmed/sshstate/releases/download/v0.1.5/sshstate_0.1.5_darwin_amd64.tar.gz"
      sha256 "eb26bbd39aec200ab84706c498cdf0edcb91604d75c5f916c7d6e42b1fbdbf4e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mouizahmed/sshstate/releases/download/v0.1.5/sshstate_0.1.5_linux_arm64.tar.gz"
      sha256 "0c815bb8e3421e91e625d82b20716c3c5db8c0948a63816475a1781d933618d1"
    end
    on_intel do
      url "https://github.com/mouizahmed/sshstate/releases/download/v0.1.5/sshstate_0.1.5_linux_amd64.tar.gz"
      sha256 "f584085e9687fe455eb4b302959d29c07aaea6ce263239cd3c8c020b1d2be48b"
    end
  end

  def install
    bin.install "sshstate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshstate version")
  end
end
