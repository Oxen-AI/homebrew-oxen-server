class OxenServer < Formula
  desc "🐂 oxen-server is the server for oxen to version and manage large machine learning datasets"
  homepage "https://www.oxen.ai"
  version "0.4.11"

  on_macos do
    if MacOS.version >= :ventura # 13
      if Hardware::CPU.arm?
        url "https://github.com/Oxen-AI/Oxen/releases/download/v0.4.11/oxen-server-mac-0.4.11.tar.gz"
        sha256 "94af49a64c095f9f24a89a9672e3476e14bad48a1ba48de56bedd077f1586a6a"
      elsif Hardware::CPU.intel?
        url "https://github.com/Oxen-AI/Oxen/releases/download/v0.4.11/oxen-server-mac-x86_64-0.4.11.tar.gz"
        sha256 "2c28fc54fcb2d83bebde759db215196a4a818c694dfd19335964e643c2a768f0"
      end
    elsif MacOS.version >= :monterey # 12
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.4.11/oxen-server-mac-12.0-0.4.11.tar.gz"
      sha256 "6e22dbf0421e91f76cc63669f2eafc4896caae623a58f1cf5d8d580ad0c2d48a"
    elsif MacOS.version >= :big_sur # 11
      url "https://github.com/Oxen-AI/Oxen/releases/download/v0.4.11/oxen-server-mac-11.0-0.4.11.tar.gz"
      sha256 "64c76803bdb425590f8c2b5ce7e4cf67fd914a84bc50c1929b0759be6f12af6f"
    end
  end

  def install
    bin.install "oxen-server"
  end
end
