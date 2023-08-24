class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.8.0"

  on_macos do
    if MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.8.0/oxen-server-mac-13.0-0.8.0.tar.gz"
      sha256 "3c1b3cdac3deff288e182a67717f19e2e5b0787716f6812299644252473440d4"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.8.0/oxen-server-mac-12.0-0.8.0.tar.gz"
      sha256 "0463c421a3906e17cf1db407b9c7028b7a49a7d92d8d1d88e0b356a246d7b679"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.8.0/oxen-server-mac-11.0-0.8.0.tar.gz"
      sha256 "d64a7c9292185eb2126221ad4e40324a149283f578f9b6d2d7f0f4cce414ab0f"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
