class SiteoneCrawler < Formula
  desc "Website crawler and QA toolkit in Rust for security, performance, SEO, and accessibility audits, offline cloning, markdown export, sitemap generation, cache warming, and CI/CD gating — one dependency-free binary for all major platforms, 10 tools in one."
  homepage "https://crawler.siteone.io/"
  version "2.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janreges/siteone-crawler/releases/download/v#{version}/siteone-crawler-v#{version}-macos-arm64.tar.gz"
      sha256 "c39a809fa855f03e39bd59a22d6f934e680ecd461eb044b8751d6d876dac183c"
    else
      url "https://github.com/janreges/siteone-crawler/releases/download/v#{version}/siteone-crawler-v#{version}-macos-x64.tar.gz"
      sha256 "97fa1280e9818a969bbd40d18cb0ba403f003639fbaf9d00bdb6463e368424aa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janreges/siteone-crawler/releases/download/v#{version}/siteone-crawler-v#{version}-linux-arm64.tar.gz"
      sha256 "6add100da26920ff7b1fa4bfa6c08a992b6abfd17e2928411c6b8351231dce13"
    else
      url "https://github.com/janreges/siteone-crawler/releases/download/v#{version}/siteone-crawler-v#{version}-linux-x64.tar.gz"
      sha256 "734288ea93bb0c79d928c1c8b37a121d40438d2f7043ac1fbedb8d696a999d11"
    end
  end

  def install
    bin.install "siteone-crawler"
  end

  test do
    assert_match "SiteOne Crawler", shell_output("#{bin}/siteone-crawler --version")
  end
end
