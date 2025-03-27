class TartExecutor < Formula
  desc "Tart executor for github"
  homepage "https://github.com/bludesign/tartelet"
  url "https://github.com/bludesign/tartelet/releases/download/v0.12.26/tart-executor.zip"
  sha256 "32dca79dbe261ff1082d6242136fa762253a2b5a503bb0da09a943c031fe04fa"
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