require "fileutils"

module Factory
  class Page
    attr_reader :title, :author, :content

    def initialize(title, author)
      @title = title
      @author = author
      @content = []
    end

    def add(item)
      @content << item
    end

    def output(filename)
      File.write(filename, make_html)
      puts "#{filename} を作成しました。"
    rescue IOError => e
      puts e.message
    end

    def make_html
      raise NotImplementedError, "#{self.class}##{__method__} must be implemented"
    end
  end
end
