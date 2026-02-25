class Nt < Formula
  desc "Simple indexed notes maintainer for the command line"
  homepage "https://github.com/poiurewq/scripts"
  url "https://github.com/poiurewq/scripts/archive/refs/tags/nt-v0.1.2.tar.gz"
  sha256 "9cd5d7b715f69d5c902dee3f012430b2c3a1d256fdc7a1708241c2c535741557"
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
