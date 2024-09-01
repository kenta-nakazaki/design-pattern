require_relative "../factory/factory"
require_relative "list_link"
require_relative "list_tray"
require_relative "list_page"

class ListFactory < Factory::Factory
  def create_link(caption, url)
    ListLink.new(caption, url)
  end

  def create_tray(caption)
    ListTray.new(caption)
  end

  def create_page(title, author)
    ListPage.new(title, author)
  end
end
