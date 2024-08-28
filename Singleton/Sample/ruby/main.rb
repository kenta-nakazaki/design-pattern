require_relative 'singleton'

puts "Start."
obj1 = Singleton.instance
obj2 = Singleton.instance

puts "obj1: #{obj1}"

if obj1.equal?(obj2)
  puts "obj1とobj2は同じインスタンスです。"
else
  puts "obj1とobj2は同じインスタンスではありません。"
end
puts "End."
