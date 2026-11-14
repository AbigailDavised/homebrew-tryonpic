class TryonpicCli < Formula
  desc "Ecommerce Apparel Ghost-Mannequin & Marketplace Image Spec Compliance CLI"
  homepage "https://tryonpic.com"
  url "https://github.com/AbigailDavised/homebrew-tryonpic/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "87f21c39a906aaf64a40e4f4ab68aed0e424254e0da279a94a9d6db008b0dbe3"
  license "MIT"

  depends_on "node"

  def install
    chmod 0755, "bin/tryonpic-cli"
    bin.install "bin/tryonpic-cli"
  end

  test do
    output = shell_output("#{bin}/tryonpic-cli --version")
    assert_match "1.0.0", output
  end
end
