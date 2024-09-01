require_relative "text_builder"
require_relative "html_builder"
require_relative "director"

def usage
  puts "Usage: ruby main.rb text       テキストで文書作成"
  puts "Usage: ruby main.rb html       HTMLファイルで文書作成"
end

if ARGV.length != 1
  usage
  exit
end

case ARGV[0]
when "text"
  text_builder = TextBuilder.new
  director = Director.new(text_builder)
  director.construct
  result = text_builder.get_text_result
  puts result
when "html"
  html_builder = HTMLBuilder.new
  director = Director.new(html_builder)
  director.construct
  filename = html_builder.get_html_result
  puts "HTMLファイル #{filename} が作成されました。"
else
  usage
  exit
end
