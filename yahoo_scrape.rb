require 'nokogiri'

require 'open-uri'
require 'csv'

url = 'http://yahoo.co.jp'

titles = []

charset = nil
html = open(url) do |f|
  charset = f.charset
  f.read
end

doc = Nokogiri::HTML.parse(html, nil, charset)

doc.xpath('//li[@class="mdTopMTMList01Item"]').each do |node|
  # tilte
  p node.css('h3').inner_text

  # 記事のサムネイル画像
  p node.css('img').attribute('src').value

  # 記事のサムネイル画像
  p node.css('a').attribute('href').value
end
