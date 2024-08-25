# frozen_string_literal

# This class represents a Book with a name attribute.
class Book
  attr_reader :name

  def initialize(name)
    @name = name
  end
end
