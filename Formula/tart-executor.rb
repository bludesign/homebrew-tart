class TartExecutor < Formula
  desc "Tart executor for github"
  homepage "https://github.com/bludesign/tartelet"
  url "https://github.com/bludesign/tartelet/releases/download/v0.12.23/tart-executor.zip"
  sha256 "ec0d5f0629c9d3cfa3fa7b8eda0606daabdb8a117828617d15750f11e6c6d24d"
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