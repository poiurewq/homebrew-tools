class Clk < Formula
  desc "Clock in & out of work, tracking minutes spent per day"
  homepage "https://github.com/poiurewq/scripts"
  url "https://github.com/poiurewq/scripts/archive/refs/tags/clk-v0.2.4.tar.gz"
  sha256 "f2d10256fa31dac942fb1ad7694215ce520f7f6e782c60665d3d522c6cac14df"
  license "MIT"

  depends_on "bash"

  def install
    bin.install "clk/clk"
    man1.install "clk/clk.1"
  end

  test do
    assert_match "clock in & out of work", shell_output("#{bin}/clk help")
  end
end
