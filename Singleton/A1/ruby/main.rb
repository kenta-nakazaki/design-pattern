require_relative "ticket_maker"

puts "Start."

10.times do |i|
  puts "#{i}: #{TicketMaker.instance.get_next_ticket_number}"
end
puts "End."
