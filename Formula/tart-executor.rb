class TartExecutor < Formula
  desc "Tart executor for github"
  homepage "https://github.com/bludesign/tartelet"
  url "https://github.com/bludesign/tartelet/releases/download/v0.12.18/tart-executor.zip"
  sha256 "3245603f45bf0e505a37deaa162f44090398d8f7c58ae5d8b616c80e4ded1946"
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