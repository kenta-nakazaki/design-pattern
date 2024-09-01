require_relative "../factory/tray"

class ListTray < Factory::Tray
  def make_html
    sb = []
    sb << "<li>"
    sb << caption
    sb << "<ul>"
    tray.each { |item| sb << item.make_html }
    sb << "</ul>"
    sb << "</li>"
    sb.join("\n")
  end
end
