class TartRouter < Formula
  desc "Tart router for github"
  homepage "https://github.com/bludesign/tart-executor"
  url "https://github.com/bludesign/tart-executor/releases/download/v0.12.48/tart-router.zip"
  sha256 "f708d58aeee4010f31c904ddb9af388e3ee8c4a4747b9a170309a40aa40529b8"
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
