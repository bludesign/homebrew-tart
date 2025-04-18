class TartExecutor < Formula
  desc "Tart executor for github"
  homepage "https://github.com/bludesign/tart-executor"
  url "https://github.com/bludesign/tart-executor/releases/download/v0.12.40/tart-executor.zip"
  sha256 "844b675af63ac53448e6dffb5ef9aed0fa94798dc68ec88323230a1206643639"
  license "MIT"

  def install
    bin.install "tart-executor"
  end

  service do
    run [opt_bin/"tart-executor"]
    keep_alive false
    log_path var/"log/tart-executor.log"
    error_log_path var/"log/tart-executor.err.log"
  end
end