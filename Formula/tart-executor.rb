class TartExecutor < Formula
  desc "Tart executor for github"
  homepage "https://github.com/bludesign/tart-executor"
  url "https://github.com/bludesign/tart-executor/releases/download/v0.12.43/tart-executor.zip"
  sha256 "8f877b30dc98263a5559e56af595b0ee74ea8d28da3339a4777e9c838c3d5452"
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