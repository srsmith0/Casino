require_relative 'casino.rb'
require_relative 'games.rb'
require_relative 'hilo.rb'

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
  def balance
    @current_balance = @start_balance
  end
  #create a running total variable
  #add an addition method to running balance
  #add a subtraction method to running balance
end

a = Wallet.new 
a.balance 