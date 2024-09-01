require_relative "builder"
require "fileutils"

class HTMLBuilder < Builder
  def initialize
    @filename = "untitled.html"
    @sb = ""
  end

  def make_title(title)
    @filename = "#{title}.html"
    @sb << "<!DOCTYPE html>\n"
    @sb << "<html>\n"
    @sb << "<head><title>#{title}</title></head>\n"
    @sb << "<body>\n"
    @sb << "<h1>#{title}</h1>\n\n"
  end

  def make_string(str)
    @sb << "<p>#{str}</p>\n\n"
  end

  def make_items(items)
    @sb << "<ul>\n"
    items.each do |item|
      @sb << "<li>#{item}</li>\n"
    end
    @sb << "</ul>\n\n"
  end

  def close
    @sb << "</body>\n</html>\n"
    File.write(@filename, @sb)
  end

  def get_html_result
    @filename
  end
end
