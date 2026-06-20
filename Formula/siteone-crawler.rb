class SiteoneCrawler < Formula
  desc "Website crawler and QA toolkit in Rust for security, performance, SEO, and accessibility audits, offline cloning, markdown export, sitemap generation, cache warming, and CI/CD gating — one dependency-free binary for all major platforms, 10 tools in one."
  homepage "https://crawler.siteone.io/"
  version "2.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janreges/siteone-crawler/releases/download/v#{version}/siteone-crawler-v#{version}-macos-arm64.tar.gz"
      sha256 "6fec17296684681d183a47bba39c38b592ad14ad28324a594c797be8385889c5"
    else
      url "https://github.com/janreges/siteone-crawler/releases/download/v#{version}/siteone-crawler-v#{version}-macos-x64.tar.gz"
      sha256 "c7febbf8addba81c1771b193be6636d17900571e5643f4de88f6b5f51b11d6fb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janreges/siteone-crawler/releases/download/v#{version}/siteone-crawler-v#{version}-linux-arm64.tar.gz"
      sha256 "81086bd8b6261e5214bf7d5fb1d82ef97acccdd203d4ca55d32fdb9f5aebeaae"
    else
      url "https://github.com/janreges/siteone-crawler/releases/download/v#{version}/siteone-crawler-v#{version}-linux-x64.tar.gz"
      sha256 "3bcec88746a51a82e3f05bcbee19067e43d88cac0892d0a22cd56ee160988e74"
    end
  end

  def install
    bin.install "siteone-crawler"
  end

  test do
    assert_match "SiteOne Crawler", shell_output("#{bin}/siteone-crawler --version")
  end
end
