class Specability < Formula
  desc "Free local coding-agent harness"
  homepage "https://specability.com"
  version "0.1.0-preview.6"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.0-preview.6/specability-core_v0.1.0-preview.6_darwin_arm64.tar.gz"
      sha256 "208f58be3c18170c6fc01e2fde458f18c204f215d70fd6825ff1c5bf99715bcd"
    else
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.0-preview.6/specability-core_v0.1.0-preview.6_darwin_amd64.tar.gz"
      sha256 "2d0a25750aacc43465abd77701efd88e9390736114e3065f56cc892caf4b4d5b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.0-preview.6/specability-core_v0.1.0-preview.6_linux_arm64.tar.gz"
      sha256 "0638b68755afee7a910300d7f7112ce8c217c33fabacc38cefd0d7c0472cb361"
    else
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.0-preview.6/specability-core_v0.1.0-preview.6_linux_amd64.tar.gz"
      sha256 "350370bd3c0639834443c1656d96028aba74872272611e6719c8b99218b48d06"
    end
  end

  def install
    bin.install "specability"
  end

  test do
    system "#{bin}/specability", "version"
  end
end
