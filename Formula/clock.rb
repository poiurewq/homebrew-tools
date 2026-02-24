class Clock < Formula
  desc "Clock in & out of work, tracking minutes spent per day"
  homepage "https://github.com/poiurewq/scripts"
  url "https://github.com/poiurewq/scripts/archive/refs/tags/clock-v0.1.0.tar.gz"
  sha256 "PLACEHOLDER"
  license "MIT"

  depends_on "bash"

  def install
    bin.install "clock/clock"
    man1.install "clock/clock.1"
  end

  test do
    assert_match "clock in & out of work", shell_output("#{bin}/clock help")
  end
end
