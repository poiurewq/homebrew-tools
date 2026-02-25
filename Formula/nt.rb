class Nt < Formula
  desc "Simple indexed notes maintainer for the command line"
  homepage "https://github.com/poiurewq/scripts"
  url "https://github.com/poiurewq/scripts/archive/refs/tags/nt-v0.1.5.tar.gz"
  sha256 "a8a67813b7d1910be74343f60722504db6a55c3db86fc867dbab601578f0cfa4"
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
