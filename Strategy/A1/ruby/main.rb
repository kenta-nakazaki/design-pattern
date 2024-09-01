require_relative "player"
require_relative "winning_strategy"
require_relative "prob_strategy"
require_relative "random_strategy"

class Main
  def self.main(args)
    if args.length != 2
      puts "Usage: ruby main.rb randomseed1 randomseed2"
      puts "Example: ruby main.rb 314 15"
      exit
    end

    seed1 = args[0].to_i
    seed2 = args[1].to_i
    player1 = Player.new("Taro", RandomStrategy.new(seed1))
    player2 = Player.new("Hana", ProbStrategy.new(seed2))

    100.times do
      next_hand1 = player1.next_hand
      next_hand2 = player2.next_hand

      if next_hand1.stronger_than?(next_hand2)
        puts "Winner: #{player1}"
        player1.win
        player2.lose
      elsif next_hand2.stronger_than?(next_hand1)
        puts "Winner: #{player2}"
        player1.lose
        player2.win
      else
        puts "Even..."
        player1.even
        player2.even
      end
    end

    puts "Total result:"
    puts player1
    puts player2
  end
end

Main.main(ARGV)
