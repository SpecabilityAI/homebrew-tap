class Specability < Formula
  desc "Free local coding-agent harness"
  homepage "https://specability.com"
  version "0.1.0-preview.3"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.0-preview.3/specability-core_v0.1.0-preview.3_darwin_arm64.tar.gz"
      sha256 "5cc6ae0819dffb236d8cfe8864a666daacc5af2cccb969eee19ca502cc794b52"
    else
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.0-preview.3/specability-core_v0.1.0-preview.3_darwin_amd64.tar.gz"
      sha256 "de2ad197cf231ab2f0ed6464944e750e47020fd60482960a2123b9b68607b6b8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.0-preview.3/specability-core_v0.1.0-preview.3_linux_arm64.tar.gz"
      sha256 "7d0032551b4ee4e5bbc60b8873baf82957de58d71d503f9b3e068e3507e62cc3"
    else
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.0-preview.3/specability-core_v0.1.0-preview.3_linux_amd64.tar.gz"
      sha256 "ef52f8f6305ea02ef2d121bbc954dd871c9d977fbfd44a8bf2fc6e674e24a01e"
    end
  end

  def install
    bin.install "specability"
  end

  test do
    system "#{bin}/specability", "version"
  end
end
