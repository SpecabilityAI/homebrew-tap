class Specability < Formula
  desc "Free local coding-agent harness"
  homepage "https://specability.com"
  version "0.2.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.2.0/specability-core_v0.2.0_darwin_arm64.tar.gz"
      sha256 "c0b4d7b95d8e7a34ba8fbba539b64b88dd27e5b97e5d5b47aeb745d69b45e209"
    else
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.2.0/specability-core_v0.2.0_darwin_amd64.tar.gz"
      sha256 "a141e70ed07fcb3cadd46dab69e902b3c6034d4132c235ecd5d124d93c9c00cf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.2.0/specability-core_v0.2.0_linux_arm64.tar.gz"
      sha256 "5c1a6b10de0a1d9f5468742d182647bcd245525827a7f740ecf9222aa15944e3"
    else
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.2.0/specability-core_v0.2.0_linux_amd64.tar.gz"
      sha256 "f92966e0b7fbf5aaafbb47ed7ea8a7664821781a179c06f606e600ba7517805c"
    end
  end

  def install
    bin.install "specability"
  end

  test do
    system "#{bin}/specability", "version"
  end
end
