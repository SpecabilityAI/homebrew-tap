class Specability < Formula
  desc "Free local coding-agent harness"
  homepage "https://specability.com"
  version "0.1.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.2/specability-core_v0.1.2_darwin_arm64.tar.gz"
      sha256 "fe791f67cb3d2bd84930a7940dcb78eeba1dfafa532b096d69ce06b15708ada4"
    else
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.2/specability-core_v0.1.2_darwin_amd64.tar.gz"
      sha256 "ef35065368cc9046007e54c7341aa86d04b44bf3075d5d7df58d04016b2d4b1d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.2/specability-core_v0.1.2_linux_arm64.tar.gz"
      sha256 "9b9ad7301769d2557cf87af9660cbcaa40fe513c76b6475e0bc107c6ec20ea91"
    else
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.2/specability-core_v0.1.2_linux_amd64.tar.gz"
      sha256 "d487f75de5e3fc77e246f4faa96898d924b495b8416d7b2a584c5884197120d2"
    end
  end

  def install
    bin.install "specability"
  end

  test do
    system "#{bin}/specability", "version"
  end
end
