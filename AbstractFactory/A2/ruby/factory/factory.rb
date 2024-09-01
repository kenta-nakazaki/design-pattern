module Factory
  def self.get_factory(classname)
    Object.const_get(classname).new
  rescue NameError
    puts "クラス #{classname} が見つかりません。"
    nil
  rescue StandardError => e
    puts e.message
    nil
  end

  class Factory
    def create_link(caption, url)
      raise NotImplementedError, "#{self.class}##{__method__} must be implemented"
    end

    def create_tray(caption)
      raise NotImplementedError, "#{self.class}##{__method__} must be implemented"
    end

    def create_page(title, author)
      raise NotImplementedError, "#{self.class}##{__method__} must be implemented"
    end

    def create_yahoo_page
      link = create_link("Yahoo!", "http://www.yahoo.com/")
      page = create_page("Yahoo!", "Yahoo!")
      page.add(link)
      page
    end
  end
end
