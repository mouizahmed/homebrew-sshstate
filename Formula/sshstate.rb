class Sshstate < Formula
  desc "Synchronize an SSH environment across machines"
  homepage "https://github.com/mouizahmed/sshstate"
  version "0.1.2"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/mouizahmed/sshstate/releases/download/v0.1.2/sshstate_0.1.2_darwin_arm64.tar.gz"
      sha256 "99f59666d7ea9884d6223b23aa082ef9e15e623a985b2ddda0eb33362d6f7f87"
    end
    on_intel do
      url "https://github.com/mouizahmed/sshstate/releases/download/v0.1.2/sshstate_0.1.2_darwin_amd64.tar.gz"
      sha256 "ca2ce422f1bea35140896ce328decc7eb0d93a40a17565c659c744257c90f7a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mouizahmed/sshstate/releases/download/v0.1.2/sshstate_0.1.2_linux_arm64.tar.gz"
      sha256 "96aed03aa1554f55174050172c4f506d437522c889ebd78b36a34a140f43476f"
    end
    on_intel do
      url "https://github.com/mouizahmed/sshstate/releases/download/v0.1.2/sshstate_0.1.2_linux_amd64.tar.gz"
      sha256 "9a4df24a93510e85722b83a6f68845583b6a4998302b12de9408a30545b0ebbb"
    end
  end

  def install
    bin.install "sshstate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshstate version")
  end
end
