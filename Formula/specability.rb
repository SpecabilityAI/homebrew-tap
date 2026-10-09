class Specability < Formula
  desc "Free local coding-agent harness"
  homepage "https://specability.com"
  version "0.5.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.5.0/specability-core_v0.5.0_darwin_arm64.tar.gz"
      sha256 "d54946104b2c86422f370de8666578b704babedd4462915558a8d497b27a1999"
    else
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.5.0/specability-core_v0.5.0_darwin_amd64.tar.gz"
      sha256 "838c096b9ef386785ad6a8ed5bbf8ef64697e9a457ab838485da67dbb1d3546f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.5.0/specability-core_v0.5.0_linux_arm64.tar.gz"
      sha256 "5ce36e55f6fc9c291b5412afff47f927d790312412e28eddc01f096cbeaf1766"
    else
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.5.0/specability-core_v0.5.0_linux_amd64.tar.gz"
      sha256 "ac65eae6bc6199eae90137642bbf5c664f8e9c685e0e158e9588044529a9fa84"
    end
  end

  def install
    bin.install "specability"
  end

  test do
    system "#{bin}/specability", "version"
  end
end
