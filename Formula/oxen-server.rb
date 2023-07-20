class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.7.4"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.7.4/oxen-server-mac-13.0-0.7.4.tar.gz"
      sha256 "d4b3649661b6eb3350c3890ca0607c695228c96a80d797a1690446bb29bad529"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.7.4/oxen-server-mac-12.0-0.7.4.tar.gz"
      sha256 "3d7b0297944ae4007d03579c4f9f032f3d0a19365e95e883a65c698ce62c5522"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.7.4/oxen-server-mac-11.0-0.7.4.tar.gz"
      sha256 "b9e3d4611ee9840583d4aa00297e3f023fdbbb98d2de7d7ff94bd87baccb01b3"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
