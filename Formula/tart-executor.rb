class TartExecutor < Formula
  desc "Tart executor for github"
  homepage "https://github.com/bludesign/tart-executor"
  url "https://github.com/bludesign/tart-executor/releases/download/v0.12.49/tart-executor.zip"
  sha256 "261e451e1307bf282a12bcd753721cee30f54f29b2afb4853856afaaa53857ed"
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