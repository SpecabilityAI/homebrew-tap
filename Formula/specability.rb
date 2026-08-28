class Specability < Formula
  desc "Free local coding-agent harness"
  homepage "https://specability.com"
  version "0.3.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.3.2/specability-core_v0.3.2_darwin_arm64.tar.gz"
      sha256 "dfa51b910b989148fcfdad0f824f695c27c5619a18b4b32342d817d5ca2d54c1"
    else
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.3.2/specability-core_v0.3.2_darwin_amd64.tar.gz"
      sha256 "a26494c7e02a929db20ef83ea2824bfbbc018c89fba77867de84137713486585"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.3.2/specability-core_v0.3.2_linux_arm64.tar.gz"
      sha256 "fb23d51030a9954d9775d7e6089abceaed2ba3edb8bda0753183523ddf08473d"
    else
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.3.2/specability-core_v0.3.2_linux_amd64.tar.gz"
      sha256 "caba4584a95ced82382589ad94d213a80bcee5afb2ae8a8ffe23834212a91307"
    end
  end

  def install
    bin.install "specability"
  end

  test do
    system "#{bin}/specability", "version"
  end
end
