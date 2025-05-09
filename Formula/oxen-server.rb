class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.34.2"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.34.2/oxen-server-mac-15.0.tar.gz"
      sha256 "995cf88c69746482503bcc38e85b298aa9c3d038f0aaaa7c6909806daffaaace"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.34.2/oxen-server-mac-14.0.tar.gz"
      sha256 "5fc3fd7b265e69cdf3c09c8f962a547037db1a423f90a57b23b5af49551796f2"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.34.2/oxen-server-mac-13.0.tar.gz"
      sha256 "bd5357c6a375d604bd012359d83559296f411b6695314f464889543f5cddcc33"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
