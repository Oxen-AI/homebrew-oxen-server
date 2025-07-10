class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.36.1"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.36.1/oxen-server-mac-15.0.tar.gz"
      sha256 "1f3ef43a8d4c7b9912ced4e091a191e78addbce20c178293a738f184af1f5599"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.36.1/oxen-server-mac-14.0.tar.gz"
      sha256 "83a9ec1894703560f834d9330804c024e759909572fbf83cbe1e66d8efd63c8a"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.36.1/oxen-server-mac-13.0.tar.gz"
      sha256 "f5f4cba521e7253ca9dd57a4caaec8b7ebb05998eaa91ae97ddb580839b9799a"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
