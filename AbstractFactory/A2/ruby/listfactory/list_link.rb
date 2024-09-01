require_relative "../factory/link"

class ListLink < Factory::Link
  def make_html
    "  <li><a href=\"#{url}\">#{caption}</a></li>\n"
  end
end
