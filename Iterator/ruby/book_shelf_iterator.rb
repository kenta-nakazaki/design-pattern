# frozen_string_literal: true

# BookShelfIterator is an iterator for the BookShelf class.
class BookShelfIterator
  include Enumerable

  def initialize(book_shelf)
    @book_shelf = book_shelf
    @index = 0
  end

  def next?
    @index < @book_shelf.length
  end

  def next
    raise StopIteration unless next?

    book = @book_shelf.get_book_at(@index)
    @index += 1
    book
  end
end
