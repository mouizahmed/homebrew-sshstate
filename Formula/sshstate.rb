class Sshstate < Formula
  desc "Synchronize an SSH environment across machines"
  homepage "https://github.com/mouizahmed/sshstate"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/mouizahmed/sshstate/releases/download/v0.1.3/sshstate_0.1.3_darwin_arm64.tar.gz"
      sha256 "da5f138e6968b53816417c8dbd141cd5ad31b31d4d834525895a43de16a3528e"
    end
    on_intel do
      url "https://github.com/mouizahmed/sshstate/releases/download/v0.1.3/sshstate_0.1.3_darwin_amd64.tar.gz"
      sha256 "b29f3b1892aad9d5a3c1fdf1bbe57e64ce80aadb3c02ac669a25be1cf81e25e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mouizahmed/sshstate/releases/download/v0.1.3/sshstate_0.1.3_linux_arm64.tar.gz"
      sha256 "b1e35cd567923af10cf2d250e44230507930cebbcdc0c42002606b69b7b444c9"
    end
    on_intel do
      url "https://github.com/mouizahmed/sshstate/releases/download/v0.1.3/sshstate_0.1.3_linux_amd64.tar.gz"
      sha256 "d23fd0e0acdc3045b8d09f7c0003263c3f952e4637cf44410302af639dff5fc1"
    end
  end

  def install
    bin.install "sshstate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshstate version")
  end
end
