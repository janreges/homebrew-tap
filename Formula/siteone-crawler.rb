class SiteoneCrawler < Formula
  desc "Website crawler and QA toolkit in Rust for security, performance, SEO, and accessibility audits, offline cloning, markdown export, sitemap generation, cache warming, and CI/CD gating — one dependency-free binary for all major platforms, 10 tools in one."
  homepage "https://crawler.siteone.io/"
  version "2.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janreges/siteone-crawler/releases/download/v#{version}/siteone-crawler-v#{version}-macos-arm64.tar.gz"
      sha256 "5a412734fdff6d6a25a4fa8bf2436b9399909923e206259a6fb111fe77bedafd"
    else
      url "https://github.com/janreges/siteone-crawler/releases/download/v#{version}/siteone-crawler-v#{version}-macos-x64.tar.gz"
      sha256 "4187e98b0b8c52eeb428afe82edcbb85661ab5a321c68bd478efc55779e9afd4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janreges/siteone-crawler/releases/download/v#{version}/siteone-crawler-v#{version}-linux-arm64.tar.gz"
      sha256 "fb30192ec52edf28883ad54062cbfa03894a272a8535ef8b1036347f2e9052cf"
    else
      url "https://github.com/janreges/siteone-crawler/releases/download/v#{version}/siteone-crawler-v#{version}-linux-x64.tar.gz"
      sha256 "76310c8723bb9cffb91550b6c617b61ca1ae3061ed92b2af640923da58c96fe8"
    end
  end

  def install
    bin.install "siteone-crawler"
  end

  test do
    assert_match "SiteOne Crawler", shell_output("#{bin}/siteone-crawler --version")
  end
end
