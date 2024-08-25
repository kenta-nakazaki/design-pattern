# frozen_string_literal: true

# 本棚クラスは本を管理し、列挙可能にします。
class BookShelf
  include Enumerable

  def initialize(initial_size)
    @books = Array.new(initial_size)
    @last = 0
  end

  def get_book_at(index)
    @books[index]
  end

  def append_book(book)
    @books[@last] = book
    @last += 1
  end

  def length
    @last
  end

  def each
    @books.each do |book|
      yield book if book
    end
  end
end
