class Specability < Formula
  desc "Free local coding-agent harness"
  homepage "https://specability.com"
  version "0.1.4"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.4/specability-core_v0.1.4_darwin_arm64.tar.gz"
      sha256 "464c25ba34e6240ebd8cb4ea6f405cfe5ec6adae6302526f075ea8c8dec6129f"
    else
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.4/specability-core_v0.1.4_darwin_amd64.tar.gz"
      sha256 "0c13251f1cfd873c937a6d67c600b8d210d132468d626b821231877a5b260dfb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.4/specability-core_v0.1.4_linux_arm64.tar.gz"
      sha256 "ed78626463d9855debd143417f0096f21290cbff9ce026ea39b985793ca8cd19"
    else
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.4/specability-core_v0.1.4_linux_amd64.tar.gz"
      sha256 "fed01904504520655eb4fbb857cf54e1f74c51c3ccac2a420b364b99bb45fe46"
    end
  end

  def install
    bin.install "specability"
  end

  test do
    system "#{bin}/specability", "version"
  end
end
