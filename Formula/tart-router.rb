class TartRouter < Formula
  desc "Tart router for github"
  homepage "https://github.com/bludesign/tart-executor"
  url "https://github.com/bludesign/tart-executor/releases/download/v0.23.53/tart-router.zip"
  sha256 "ffdffa1d417545f252584b6b30e3ab3ba53e0356dbbb357656c5122b23583928"
  license "MIT"

  def install
    bin.install "tart-router"
  end

  service do
    run [opt_bin/"tart-router"]
    keep_alive false
    log_path var/"log/tart-router.log"
    error_log_path var/"log/tart-router.err.log"
  end
end
