class TartExecutor < Formula
  desc "Tart executor for github"
  homepage "https://github.com/bludesign/tartelet"
  url "https://github.com/bludesign/tartelet/releases/download/v0.12.21/tart-executor.zip"
  sha256 "9c81a121ff1c5abb50b2bc33f8e62255d9034ed6f23e77bbb3460064ea1f07ac"
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