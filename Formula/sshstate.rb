class Sshstate < Formula
  desc "Synchronize an SSH environment across machines"
  homepage "https://github.com/mouizahmed/sshstate"
  version "0.1.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/mouizahmed/sshstate/releases/download/v0.1.0/sshstate_0.1.0_darwin_arm64.tar.gz"
      sha256 "419b5e84f880c8337bf5112f8777783e904c44c57bcdc17261f7745c65b5cc17"
    end
    on_intel do
      url "https://github.com/mouizahmed/sshstate/releases/download/v0.1.0/sshstate_0.1.0_darwin_amd64.tar.gz"
      sha256 "dc40bbe0f8b27f7083a55b7cf073f89650cd6a4af679f1fb9c4d11021c241cfe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mouizahmed/sshstate/releases/download/v0.1.0/sshstate_0.1.0_linux_arm64.tar.gz"
      sha256 "0a6d32b277b5e7fdbce172dba9bf58870359dd67a39ab589b07da2200edccb6f"
    end
    on_intel do
      url "https://github.com/mouizahmed/sshstate/releases/download/v0.1.0/sshstate_0.1.0_linux_amd64.tar.gz"
      sha256 "8f645d6504625f5e5aad837472160951dd7835aad6e0288dff8c1aa8de4d79de"
    end
  end

  def install
    bin.install "sshstate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshstate version")
  end
end
