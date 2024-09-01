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

page = factory.create_yahoo_page

page.output(filename)
