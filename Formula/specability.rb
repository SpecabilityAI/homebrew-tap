class Specability < Formula
  desc "Free local coding-agent harness"
  homepage "https://specability.com"
  version "0.4.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.4.0/specability-core_v0.4.0_darwin_arm64.tar.gz"
      sha256 "9749e6feafb50a204d07da21f7f305a9ffcaf3c065bae962baa6edab048b0f85"
    else
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.4.0/specability-core_v0.4.0_darwin_amd64.tar.gz"
      sha256 "04a9d294ce8c46d6503d09f176b41b9a5d0a4ef2b1cc7375a54c31077aaef4c6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.4.0/specability-core_v0.4.0_linux_arm64.tar.gz"
      sha256 "a61a9047cd95111d6764ac849fea8f5b1bc9e8110718dc56db237ae8a1bb78a4"
    else
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.4.0/specability-core_v0.4.0_linux_amd64.tar.gz"
      sha256 "365bdc51805406a36b2cdc718690d1377182a152a6223747c068e5d24ac236c3"
    end
  end

  def install
    bin.install "specability"
  end

  test do
    system "#{bin}/specability", "version"
  end
end
