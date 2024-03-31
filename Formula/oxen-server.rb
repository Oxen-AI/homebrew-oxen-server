class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.14.0"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.14.0/oxen-server-mac-13.0-0.14.0.tar.gz"
      sha256 "9dbed6bc31681eea9042b6db09ecf5058c2dd76572b509016ef9d5398d35d4bb"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.14.0/oxen-server-mac-12.0-0.14.0.tar.gz"
      sha256 "0b25317838a3eaf4bf7d3f0ab04562fb70d2ac42f7e9c0f2cc881cc5421cd4c1"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.14.0/oxen-server-mac-11.0-0.13.0.tar.gz"
      sha256 "eb1e70d78cc09860f8db4021d7b1446281eb863d8d23f669342147ab091176b8"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
