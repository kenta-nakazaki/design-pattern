module Factory
  class Item
    attr_reader :caption

    def initialize(caption)
      @caption = caption
    end

    def make_html
      raise NotImplementedError, "#{self.class}##{__method__} must be implemented"
    end
  end
end
