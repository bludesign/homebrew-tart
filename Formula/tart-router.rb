class TartRouter < Formula
  desc "Tart router for github"
  homepage "https://github.com/bludesign/tart-executor"
  url "https://github.com/bludesign/tart-executor/releases/download/v0.23.64/tart-router.zip"
  sha256 "6a5a06a3c624e6682fe851e345c80b6a6a0958effa01fdd562fdc56fd4f02ab8"
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
