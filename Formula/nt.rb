class Nt < Formula
  desc "Simple indexed notes maintainer for the command line"
  homepage "https://github.com/poiurewq/scripts"
  url "https://github.com/poiurewq/scripts/archive/refs/tags/nt-v0.1.0.tar.gz"
  sha256 "2db9dc65cf2d50fbb2c2eecdcdbdf327c3e1d6b94fca64e9b364b7c0d363fcab"
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
