class TartRouter < Formula
  desc "Tart router for github"
  homepage "https://github.com/bludesign/tart-executor"
  url "https://github.com/bludesign/tart-executor/releases/download/v0.23.66/tart-router.zip"
  sha256 "1a8e86d29a695468363761340993f7dd6a166e6e42a5ea26c07ecb9f6eb32b0e"
  license "MIT"

  def install
    bin.install "tart-router"
  end

  service do
    run [opt_bin/"tart-router"]
    keep_alive false
    log_path var/"log/tart-router.log"
    error_log_path var/"log/tart-router.err.log"
  end
end
