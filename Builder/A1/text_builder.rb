require_relative "builder"

class TextBuilder
  include Builder

  def initialize
    @sb = ""
  end

  def make_title(title)
    @sb << "==============================\n"
    @sb << "『#{title}』\n\n"
  end

  def make_string(str)
    @sb << "■#{str}\n\n"
  end

  def make_items(items)
    items.each do |item|
      @sb << "　・#{item}\n"
    end
    @sb << "\n"
  end

  def close
    @sb << "==============================\n"
  end

  def get_text_result
    @sb
  end
end
