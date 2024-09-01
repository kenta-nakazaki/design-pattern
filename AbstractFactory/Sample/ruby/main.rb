require_relative "factory/factory"
require_relative "listfactory/list_factory"

if ARGV.length != 2
  puts "Usage: ruby main.rb filename.html class.name.of.ConcreteFactory"
  puts "Example 1: ruby main.rb list.html ListFactory"
  exit
end

filename = ARGV[0]
classname = ARGV[1]

factory = Factory.get_factory(classname)

# Blog
blog1 = factory.create_link("Blog 1", "https://example.com/blog1")
blog2 = factory.create_link("Blog 2", "https://example.com/blog2")
blog3 = factory.create_link("Blog 3", "https://example.com/blog3")

blog_tray = factory.create_tray("Blog Site")
blog_tray.add(blog1)
blog_tray.add(blog2)
blog_tray.add(blog3)

# News
news1 = factory.create_link("News 1", "https://example.com/news1")
news2 = factory.create_link("News 2", "https://example.com/news2")
news3 = factory.create_tray("News 3")
news3.add(factory.create_link("News 3 (US)", "https://example.com/news3us"))
news3.add(factory.create_link("News 3 (Japan)", "https://example.com/news3jp"))

news_tray = factory.create_tray("News Site")
news_tray.add(news1)
news_tray.add(news2)
news_tray.add(news3)

# Page
page = factory.create_page("Blog and News", "Hiroshi Yuki")
page.add(blog_tray)
page.add(news_tray)

page.output(filename)
