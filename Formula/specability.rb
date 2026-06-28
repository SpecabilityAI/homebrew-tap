class Specability < Formula
  desc "Free local coding-agent harness"
  homepage "https://specability.com"
  version "0.1.0-preview.4"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.0-preview.4/specability-core_v0.1.0-preview.4_darwin_arm64.tar.gz"
      sha256 "5ed0656248798e8b45d9d075ad48c75885f3b6b9377336c9a0200e83772f40bf"
    else
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.0-preview.4/specability-core_v0.1.0-preview.4_darwin_amd64.tar.gz"
      sha256 "68689594f0b5e07a44700a965929a9ceab50f13d1ae7ab737cbcb94b9fdb5a92"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.0-preview.4/specability-core_v0.1.0-preview.4_linux_arm64.tar.gz"
      sha256 "66782adf4f301801fd4b58b99c13ff014839f1b65928ef4472f67d6202a1fabe"
    else
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.0-preview.4/specability-core_v0.1.0-preview.4_linux_amd64.tar.gz"
      sha256 "f97c98b12c6f26454b9fc4c60522a09504f4efc3d0bbc2011169397d88a7cbd9"
    end
  end

  def install
    bin.install "specability"
  end

  test do
    system "#{bin}/specability", "version"
  end
end
