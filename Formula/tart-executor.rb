class TartExecutor < Formula
  desc "Tart executor for github"
  homepage "https://github.com/bludesign/tartelet"
  url "https://github.com/bludesign/tartelet/releases/download/v0.12.20/tart-executor.zip"
  sha256 "4f70f9c2d0f5920a8d85d91b9bdb8d56800a5ab5dd7b2156d7ab3b2565494a1e"
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