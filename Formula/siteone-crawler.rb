class SiteoneCrawler < Formula
  desc "Website crawler and QA toolkit in Rust for security, performance, SEO, and accessibility audits, offline cloning, markdown export, sitemap generation, cache warming, and CI/CD gating — one dependency-free binary for all major platforms, 10 tools in one."
  homepage "https://crawler.siteone.io/"
  version "VERSION_PLACEHOLDER"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janreges/siteone-crawler/releases/download/v#{version}/siteone-crawler-v#{version}-macos-arm64.tar.gz"
      sha256 "SHA_MACOS_ARM64_PLACEHOLDER"
    else
      url "https://github.com/janreges/siteone-crawler/releases/download/v#{version}/siteone-crawler-v#{version}-macos-x64.tar.gz"
      sha256 "SHA_MACOS_X64_PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janreges/siteone-crawler/releases/download/v#{version}/siteone-crawler-v#{version}-linux-arm64.tar.gz"
      sha256 "SHA_LINUX_ARM64_PLACEHOLDER"
    else
      url "https://github.com/janreges/siteone-crawler/releases/download/v#{version}/siteone-crawler-v#{version}-linux-x64.tar.gz"
      sha256 "SHA_LINUX_X64_PLACEHOLDER"
    end
  end

  def install
    bin.install "siteone-crawler"
  end

  test do
    assert_match "SiteOne Crawler", shell_output("#{bin}/siteone-crawler --version")
  end
end
