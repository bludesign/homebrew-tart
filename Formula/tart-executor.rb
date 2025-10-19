class TartExecutor < Formula
  desc "Tart executor for github"
  homepage "https://github.com/bludesign/tart-executor"
  url "https://github.com/bludesign/tart-executor/releases/download/v0.12.47/tart-executor.zip"
  sha256 "a1b52fd1fd9464857f8697ca7ce4011756cc3f848eeeba60d5c90cddccfee2bf"
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