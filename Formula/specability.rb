class Specability < Formula
  desc "Free local coding-agent harness"
  homepage "https://specability.com"
  version "0.1.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.1/specability-core_v0.1.1_darwin_arm64.tar.gz"
      sha256 "9ec2bf40cf85328dd80b24f4353ba53f924d85479e59279d332f83c9acf8782d"
    else
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.1/specability-core_v0.1.1_darwin_amd64.tar.gz"
      sha256 "8e7e7d4e3a557b49e180ed335a131ba43618bb231a40cf88ee6491524cb40db6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.1/specability-core_v0.1.1_linux_arm64.tar.gz"
      sha256 "1a054a59cae2be57577ec341a02d13457b336b3923e58a96b4812d6c4fe28775"
    else
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.1/specability-core_v0.1.1_linux_amd64.tar.gz"
      sha256 "feaf78fbc03a6c816d763404b2152dcb1b7b91acba7149173a34f1a23be3ec24"
    end
  end

  def install
    bin.install "specability"
  end

  test do
    system "#{bin}/specability", "version"
  end
end
