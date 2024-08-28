# Singleton moduleを使用して実装
require 'singleton'
class TicketMaker
  include Singleton

  def initialize
    @ticket_number = 1000
  end

  def get_next_ticket_number
    @ticket_number += 1
  end
end

# class TicketMaker
#   @instance = TicketMaker.new
#   private_class_method :new

#   def self.instance
#     @instance
#   end

#   def get_next_ticket_number
#     @ticket_number ||= 1000
#     @ticket_number += 1
#   end
# end
