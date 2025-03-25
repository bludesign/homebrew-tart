class TartExecutor < Formula
    desc "Tart executor for github"
    homepage "https://github.com/chandlerhuff/tartelet"
    url "https://github.com/chandlerhuff/tartelet/releases/download/v0.12.11/tart-executor.zip"
    sha256 "9d2c63714396a853a7f15e17a0d6ca53792714d7efb72c3c189bb7d803272ed5"
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