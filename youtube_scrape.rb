require 'open-uri'
require 'nokogiri'

# Youtubeで「ruby on rails」で検索した結果の動画のタイトルの一覧を取得する。

# youtubeでruby on railsを検索
doc = Nokogiri::HTML(open(https://www.youtube.com/results?search_query=rubyonrails))

# 動画のノードの一覧を取得
# ドキュメント全体を検索する場合は「//をつける」
nodes = doc.xpath('//*[@id="dismissable"]')

nodes.each do |node|
  # このノード以下のすべての子要素に対して検索を行う場合は「.//」をつける
  title_node = node.xpath(".//h3[@class='title-and-badge']")
  # 子要素のみを検索対象とする場合は何もつけない
  title = title_node.xpath("a")
  puts title.text
end
