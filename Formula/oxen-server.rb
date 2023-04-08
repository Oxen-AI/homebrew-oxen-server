class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.5.2"

  on_macos do
    if MacOS.version >= :ventura # 13
      if Hardware::CPU.arm?
        url "https://github.com/Oxen-AI/Oxen/releases/download/v0.5.2/oxen-server-mac-0.5.2.tar.gz"
        sha256 "0d8148232de11746a3b461c1fbb986a200edc2c931f25bf94f744c3005c1170d"
      elsif Hardware::CPU.intel?
        url "https://github.com/Oxen-AI/Oxen/releases/download/v0.5.2/oxen-server-mac-x86_64-0.5.2.tar.gz"
        sha256 "50c928de8aba617c5a63d7364cf1de891df0ab0a3e1a9882cdfae74ee60822f5"
      end
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.5.2/oxen-server-mac-12.0-0.5.2.tar.gz"
      sha256 "64fd8b5f6467a4ef55322fa0fff0b2539099acc11582d5f49ea5b3737fb62635"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.5.2/oxen-server-mac-11.0-0.5.2.tar.gz"
      sha256 "0a92dd692b718f97e9d9b8e6813fe8490850fef9969560bed9e4ffcf72509177"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
