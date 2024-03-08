class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.12.3"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.12.3/oxen-server-mac-13.0-0.12.3.tar.gz"
      sha256 "f471459f0ef0a8966e4e3027a763acaef5d6cf7837841785ea52941cefc00766"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.12.3/oxen-server-mac-12.0-0.12.3.tar.gz"
      sha256 "6588c1e1986ffd35e893324367463a44075bab13aac64adf28b658bc90a8486c"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.12.3/oxen-server-mac-11.0-0.12.3.tar.gz"
      sha256 "7d265d776b61880ad6c4ab33b9b370bb0e243c906e837c223acbe9b609e9f8d5"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
