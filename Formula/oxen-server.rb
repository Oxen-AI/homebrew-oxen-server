class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.9.6"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.9.6/oxen-server-mac-13.0-0.9.6.tar.gz"
      sha256 "6fbebed09f55f4115c3940170c746c0568882984a5a1f2cd603cdc10e856b374"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.9.6/oxen-server-mac-12.0-0.9.6.tar.gz"
      sha256 "61117e04d8aeb1d8f83abce90d289eb720d0318e69a090b737ce7a0603c924c0"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.9.6/oxen-server-mac-11.0-0.9.6.tar.gz"
      sha256 "a57759ad23e93c0b264bb5384e73bcd464418c8e61cdb10c5b893726420d511c"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
