class DockwareCli < Formula
  desc "Interactive way of getting started with dockware, docker and Shopware"
  homepage "https://dockware.io/cli"
  version "0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://dockware.io/download/cli/mac/arm64/dockware-cli"
      sha256 "748d3a94f87f82da0f390cbd11b522bf4e624903d5efd5891a5d0076d9a739d3"
    end
    if Hardware::CPU.intel?
      url "https://dockware.io/download/cli/mac/amd64/dockware-cli"
      sha256 "623750e84edd4dcd3947387e13039380902c22de7d059c2233e90a036942ec72"
    end

    def install
      bin.install "dockware-cli"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dockware.io/download/cli/linux/arm64/dockware-cli"
      sha256 "03c5deb81505ae7ec58bee6d224da94ea19eff07c2e663b4aff15f34233ef228"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_32_bit?
      url "https://dockware.io/download/cli/linux/arm/dockware-cli"
      sha256 "1fbeee7049001a0bf1e399f96ee11797ac1249c7ee91ee30e6041ca4d85683eb"
    end
    def install
      bin.install "dockware-cli"
    end
  end

  test do
    system "#{bin}/dockware-cli", "version"
  end
end
