class DockwareCli < Formula
  desc "Interactive way of getting started with dockware, docker and Shopware"
  homepage "https://dockware.io/cli"
  version "0.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://dockware.io/download/cli/mac/arm64/dockware-cli"
      sha256 "80faa207e91ee909a5d9f8c9a01d91415f692b4ebfe18b3b47d6eac549019a2e"
    end
    
    if Hardware::CPU.intel?
      url "https://dockware.io/download/cli/mac/amd64/dockware-cli"
      sha256 "661c02e22e4037dc1449c7bb44a4c688e7c419f8f0c1e66f2dedab82e1487001"
    end

    def install
      bin.install "dockware-cli"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://dockware.io/download/cli/linux/arm64/dockware-cli"
        sha256 "4c6d6c39426d48ba0398f3a2512a5e3ead3e2873bf3a1c2e0023e5fab9f57402"
      else
        url "https://dockware.io/download/cli/linux/arm/dockware-cli"
        sha256 "e734299f84fc4b9288119102a9fecb88e11610f8f2aa8549bb1ba1496a2997ad"
      end
    end

    if Hardware::CPU.intel?
      url "https://dockware.io/download/cli/linux/amd64/dockware-cli"
      sha256 "f8b8ea7ffeaf40004705dfdc33a4f125c75dcaa4003e4c8325f350a203d32dec"
    end
    
    def install
      bin.install "dockware-cli"
    end
  end

  test do
    system "#{bin}/dockware-cli", "version"
  end
end
