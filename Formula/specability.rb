class Specability < Formula
  desc "Free local coding-agent harness"
  homepage "https://specability.com"
  version "0.1.3"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.3/specability-core_v0.1.3_darwin_arm64.tar.gz"
      sha256 "c09ab3726efa08bc80f564afd93e8d7a1875a09c8a741397fba0c2049e17376a"
    else
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.3/specability-core_v0.1.3_darwin_amd64.tar.gz"
      sha256 "332eb904295165bee1b5ba4910ba57358725264805d822dfc4015516fd152921"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.3/specability-core_v0.1.3_linux_arm64.tar.gz"
      sha256 "24e080d3b963f8094a8f91fc5163422a82458dbc58545bbc650e1fe5479404b6"
    else
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.3/specability-core_v0.1.3_linux_amd64.tar.gz"
      sha256 "ddad3b6bc1cdd1390f4f76877e2f5fc4f510454a32fb4868046218d0732c8dd3"
    end
  end

  def install
    bin.install "specability"
  end

  test do
    system "#{bin}/specability", "version"
  end
end
