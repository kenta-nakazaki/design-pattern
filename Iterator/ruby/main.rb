# frozen_string_literal: true

require_relative 'book'
require_relative 'book_shelf'
require_relative 'book_shelf_iterator'

book_shelf = BookShelf.new(4)
book_shelf.append_book(Book.new('Around the World in 80 Days'))
book_shelf.append_book(Book.new('Bible'))
book_shelf.append_book(Book.new('Cinderella'))
book_shelf.append_book(Book.new('Daddy-Long-Legs'))

# 明示的にIteratorを使う方法
iterator = BookShelfIterator.new(book_shelf)
while iterator.next?
  book = iterator.next
  puts book.name
end
puts

# 拡張for文を使う方法
book_shelf.each do |book|
  puts book.name
end
puts
