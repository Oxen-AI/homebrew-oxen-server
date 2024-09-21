class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.18.18"

  on_macos do
    if MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.18.18/oxen-server-mac-14.0.tar.gz"
      sha256 "ba4b45f9f40deec97b4029b91d58d370187a5ba7662c05097af9991e1545d473"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.18.18/oxen-server-mac-13.0.tar.gz"
      sha256 "fe206d191576b23c449323134a280b73571d03e566164b210243c4124b9cdfad"
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.18.18/oxen-server-mac-12.0.tar.gz"
      sha256 "7008810e2070881d5953fa5d79bcf0168eaa65d7c39264b6fbc6701010acfc85"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
