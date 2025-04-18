class TartExecutor < Formula
  desc "Tart executor for github"
  homepage "https://github.com/bludesign/tart-executor"
  url "https://github.com/bludesign/tart-executor/releases/download/v0.12.32/tart-executor.zip"
  sha256 "d76c5465d7fcad62aa562f9231a99463428cfb2c35e7f8398ed5381c207a1c4e"
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