class Player
  #Start the game.  Player has a name and wallet
  def initialize
    print "Welcome!"
    puts "\nWhat is your name?"
    @name = gets.strip.capitalize
  end

end 

class Wallet
  def initialize
    @start_balance = 100
  end
  def display
    print "Here is your starting budget: #{@start_balance}\n"
  end
end