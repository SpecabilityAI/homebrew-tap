class Specability < Formula
  desc "Free local coding-agent harness"
  homepage "https://specability.com"
  version "0.3.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.3.0/specability-core_v0.3.0_darwin_arm64.tar.gz"
      sha256 "dce204136ff4cfd24af58d4805b137c7fd436d56fbec91aacfb6d3382308e7df"
    else
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.3.0/specability-core_v0.3.0_darwin_amd64.tar.gz"
      sha256 "20c4b8920e0d4844b9ade226aa9d9c55ddf7efe4d5d61e4005481bbe935d96d2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.3.0/specability-core_v0.3.0_linux_arm64.tar.gz"
      sha256 "f235052850dbf480f6d901f012fa0a0df9f4db2a3044a3c0b028be8476e0690b"
    else
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.3.0/specability-core_v0.3.0_linux_amd64.tar.gz"
      sha256 "d12afa87b809da8543c4743cefd00f6f33f5b7e56067099e2cc75c1ce9975ef9"
    end
  end

  def install
    bin.install "specability"
  end

  test do
    system "#{bin}/specability", "version"
  end
end
