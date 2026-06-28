class Specability < Formula
  desc "Free local coding-agent harness"
  homepage "https://specability.com"
  version "0.1.0-preview.3"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.0-preview.3/specability-core_v0.1.0-preview.3_darwin_arm64.tar.gz"
      sha256 "d2492654448973822be4f58a2d7b59e989fa45b7b4d9d2d97b3042487b91d650"
    else
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.0-preview.3/specability-core_v0.1.0-preview.3_darwin_amd64.tar.gz"
      sha256 "fcfbe0809016406b736d8a48cd62351285ec35595e7e15044fce15f4ecf6fe39"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.0-preview.3/specability-core_v0.1.0-preview.3_linux_arm64.tar.gz"
      sha256 "b9a3e2eefef67fe69f1448cee2ff3347140dd8f08b877cc55ce30aee61228faf"
    else
      url "https://github.com/SpecabilityAI/specability-core/releases/download/v0.1.0-preview.3/specability-core_v0.1.0-preview.3_linux_amd64.tar.gz"
      sha256 "9cbad6aba309b41331290c0a42ecfe45e1fe7cd21c8b0832f9d7af32154bfb5a"
    end
  end

  def install
    bin.install "specability"
  end

  test do
    system "#{bin}/specability", "version"
  end
end
