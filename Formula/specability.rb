class Specability < Formula
  desc "Free local coding-agent harness"
  homepage "https://specability.com"
  version "0.1.0-preview.3"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.0-preview.3/specability-core_v0.1.0-preview.3_darwin_arm64.tar.gz"
      sha256 "d39b6cbfd367d18980f5d7f811ffadd5bf8fb5deb7368def360633821f7c1ca1"
    else
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.0-preview.3/specability-core_v0.1.0-preview.3_darwin_amd64.tar.gz"
      sha256 "c83f80ee023cb339ada18d3b4ac03799889f7779bb55f522dc16ab73f0aac6f2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.0-preview.3/specability-core_v0.1.0-preview.3_linux_arm64.tar.gz"
      sha256 "aea92a7e2a1168c0648321fdd184798d3e9e3de3a9a819b69390a0cf33787f55"
    else
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.0-preview.3/specability-core_v0.1.0-preview.3_linux_amd64.tar.gz"
      sha256 "adf97434825b27dcef7a2168e7760e64e37d8e9b7cc70640b07862488b1f2f1f"
    end
  end

  def install
    bin.install "specability"
  end

  test do
    system "#{bin}/specability", "version"
  end
end
