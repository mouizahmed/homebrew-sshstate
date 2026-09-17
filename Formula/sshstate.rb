class Sshstate < Formula
  desc "Synchronize an SSH environment across machines"
  homepage "https://github.com/mouizahmed/sshstate"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/mouizahmed/sshstate/releases/download/v0.1.3/sshstate_0.1.3_darwin_arm64.tar.gz"
      sha256 "e542c2432d3aa2551de5f65a4eda96570ead8e98a9d0917a558384514487c0be"
    end
    on_intel do
      url "https://github.com/mouizahmed/sshstate/releases/download/v0.1.3/sshstate_0.1.3_darwin_amd64.tar.gz"
      sha256 "98dcb89346a109948a36bf9f2e4b5f360e4060608f66f3604c8c246d0ddb084d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mouizahmed/sshstate/releases/download/v0.1.3/sshstate_0.1.3_linux_arm64.tar.gz"
      sha256 "2013e9f84fca224de7012fade475da26bcc18c98c8c08073a9c33d84c3d7694c"
    end
    on_intel do
      url "https://github.com/mouizahmed/sshstate/releases/download/v0.1.3/sshstate_0.1.3_linux_amd64.tar.gz"
      sha256 "891020ef6598b07d5af44c5ae994851787952916a52852dff1f6cebfd5881a90"
    end
  end

  def install
    bin.install "sshstate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshstate version")
  end
end
