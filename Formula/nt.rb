class Nt < Formula
  desc "Simple indexed notes maintainer for the command line"
  homepage "https://github.com/poiurewq/scripts"
  url "https://github.com/poiurewq/scripts/archive/refs/tags/nt-v0.1.3.tar.gz"
  sha256 "048662da30a695c2a5d4720420860d2b46b39c935c78d37ccfd45926b8523090"
  license "MIT"

  depends_on "zsh" => :optional

  def install
    bin.install "nt/nt"
    man1.install "nt/nt.1"
  end

  test do
    assert_match "simple notes maintainer", shell_output("#{bin}/nt -h")
  end
end
