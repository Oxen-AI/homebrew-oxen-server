class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.35.0"

  on_macos do
    if MacOS.version >= :sequoia # 15
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.35.0/oxen-server-mac-15.0.tar.gz"
      sha256 "fb5a994ae7a505fb12183b997945efb8af5c2db5587c722a3988de0912fea4ba"
    elsif MacOS.version >= :sonoma # 14
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.35.0/oxen-server-mac-14.0.tar.gz"
      sha256 "6be654f9eaa6d117f6fb4bc3052a093d7dd6009a9ab108c2bba653972d408bc8"
    elsif MacOS.version >= :ventura # 13
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.35.0/oxen-server-mac-13.0.tar.gz"
      sha256 "2a834682182bbad681980e2b272dcdddde9921420ef7353426445d905b760d1f"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
