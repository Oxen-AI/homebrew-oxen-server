class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.4.10"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.4.10/oxen-server-mac-0.4.10.tar.gz"
      sha256 "2993f3e9fca2f1fb04aec4d951dc5280e0cae17e438653db06b1bee61c9fc13a"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.4.10/oxen-server-mac-12.0-0.4.10.tar.gz"
      sha256 "6ddc0f69ca38073a802ac89b264a18e630f947348bbc5f2e1d53c899c11ebb4a"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.4.10/oxen-server-mac-11.0-0.4.10.tar.gz"
      sha256 "466c9b695e16d479193988e672b4bff246c20e548ca93240c1f8c94096463dd0"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
