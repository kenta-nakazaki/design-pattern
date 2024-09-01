require_relative "../factory/page"

class ListPage < Factory::Page
  def make_html
    sb = []
    sb << "<!DOCTYPE html>"
    sb << "<html><head><title>#{title}</title></head>"
    sb << "<body>"
    sb << "<h1>#{title}</h1>"
    sb << "<ul>"
    content.each { |item| sb << item.make_html }
    sb << "</ul>"
    sb << "<hr><address>#{author}</address>"
    sb << "</body></html>"
    sb.join("\n")
  end
end
