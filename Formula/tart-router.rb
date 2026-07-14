class TartRouter < Formula
  desc "Tart router for github"
  homepage "https://github.com/bludesign/tart-executor"
  url "https://github.com/bludesign/tart-executor/releases/download/v0.23.62/tart-router.zip"
  sha256 "900da1d0f3e0cbdfebd5f217faa6b8a73d93d08e89ea8e62374482a416acfe2b"
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
