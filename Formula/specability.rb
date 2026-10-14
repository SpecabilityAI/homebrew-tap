class Specability < Formula
  desc "Free local coding-agent harness"
  homepage "https://specability.com"
  version "0.5.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.5.1/specability-core_v0.5.1_darwin_arm64.tar.gz"
      sha256 "d4c0896042f41d2de98ba293ff629c747f2c21e6d1fad4d6a25e84a8d0544802"
    else
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.5.1/specability-core_v0.5.1_darwin_amd64.tar.gz"
      sha256 "85cb1a46e88d105b3b981fa6ccf54c18021345aa54f76d1969d5cf284a6ac0fa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.5.1/specability-core_v0.5.1_linux_arm64.tar.gz"
      sha256 "5ed53bfecdba43edaa66c2d45f16493055e9b07a17ca597ca6f9a2f2c000d2a9"
    else
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.5.1/specability-core_v0.5.1_linux_amd64.tar.gz"
      sha256 "20a0d9307a064357adf26d3383fc9691a9614851cab2fef14b8f9a2eb6ac01a3"
    end
  end

  def install
    bin.install "specability"
  end

  test do
    system "#{bin}/specability", "version"
  end
end
