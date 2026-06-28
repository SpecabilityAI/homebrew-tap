class Specability < Formula
  desc "Free local coding-agent harness"
  homepage "https://specability.com"
  version "0.1.0-preview.5"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.0-preview.5/specability-core_v0.1.0-preview.5_darwin_arm64.tar.gz"
      sha256 "210abb2c96131d9514d6663a28dda18791d19addb7644665743b3c74069105e9"
    else
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.0-preview.5/specability-core_v0.1.0-preview.5_darwin_amd64.tar.gz"
      sha256 "383c6cf2eac950dddecd7fbc1b1874b2609631693ceea8a70baee3afe1d7af09"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.0-preview.5/specability-core_v0.1.0-preview.5_linux_arm64.tar.gz"
      sha256 "40fceba24437a90980200be4df4ab69a3d6a6147fa3c042a8427b13fa18f1d7b"
    else
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.0-preview.5/specability-core_v0.1.0-preview.5_linux_amd64.tar.gz"
      sha256 "1bda8ea4c296337ad2a23b01ed261510151860f075f583af8ce4a41d3e092d82"
    end
  end

  def install
    bin.install "specability"
  end

  test do
    system "#{bin}/specability", "version"
  end
end
