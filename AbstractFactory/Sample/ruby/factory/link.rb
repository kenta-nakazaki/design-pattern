require_relative "item"

module Factory
  class Link < Item
    attr_reader :url

    def initialize(caption, url)
      super(caption)
      @url = url
    end
  end
end
