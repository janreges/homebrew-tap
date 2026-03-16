class SiteoneCrawler < Formula
  desc "Website crawler and QA toolkit in Rust for security, performance, SEO, and accessibility audits, offline cloning, markdown export, sitemap generation, cache warming, and CI/CD gating — one dependency-free binary for all major platforms, 10 tools in one."
  homepage "https://crawler.siteone.io/"
  version "2.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janreges/siteone-crawler/releases/download/v#{version}/siteone-crawler-v#{version}-macos-arm64.tar.gz"
      sha256 "8911b1a795c4f4927054c10f727efcf9f4c2020e1e3d0dbc44409d42a05c07ec"
    else
      url "https://github.com/janreges/siteone-crawler/releases/download/v#{version}/siteone-crawler-v#{version}-macos-x64.tar.gz"
      sha256 "5992fe0b169b54b0b0402a9c98f250c04bd251fab0663e3a9ba627bb7ff03ceb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janreges/siteone-crawler/releases/download/v#{version}/siteone-crawler-v#{version}-linux-arm64.tar.gz"
      sha256 "4c0c9c32dd88efd0a75fe8603d3f4d37208b4b63cc99d8846ca3d1f99dfe79b2"
    else
      url "https://github.com/janreges/siteone-crawler/releases/download/v#{version}/siteone-crawler-v#{version}-linux-x64.tar.gz"
      sha256 "d541308cffd1c04344d60d404b6cd9790b91610fcca84ea92a0b82ddcbfa24c9"
    end
  end

  def install
    bin.install "siteone-crawler"
  end

  test do
    assert_match "SiteOne Crawler", shell_output("#{bin}/siteone-crawler --version")
  end
end
