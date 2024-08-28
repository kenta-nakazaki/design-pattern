require_relative 'triple'

puts "Start."
a1 = Triple.get_instance("ALPHA")
puts "a1: #{a1.name} を作成しました"
b1 = Triple.get_instance("BETA")
puts "b1: #{b1.name} を作成しました"
c1 = Triple.get_instance("GAMMA")
puts "c1: #{c1.name} を作成しました"
a2 = Triple.get_instance("ALPHA")
puts "a2: #{a2.name} を作成しました"
b2 = Triple.get_instance("BETA")
puts "b2: #{b2.name} を作成しました"
c2 = Triple.get_instance("GAMMA")
puts "c2: #{c2.name} を作成しました"

puts a1 == a2 ? "a1 == a2 (#{a1})" : "a1 != a2"
puts b1 == b2 ? "b1 == b2 (#{b1})" : "b1 != b2"
puts c1 == c2 ? "c1 == c2 (#{c1})" : "c1 != c2"
puts "End."
