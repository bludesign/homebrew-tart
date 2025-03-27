class TartRouter < Formula
  desc "Tart router for github"
  homepage "https://github.com/bludesign/tartelet"
  url "https://github.com/bludesign/tartelet/releases/download/v0.12.23/tart-router.zip"
  sha256 "ec0d5f0629c9d3cfa3fa7b8eda0606daabdb8a117828617d15750f11e6c6d24d"
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
