# require_relative 'casino'
# require_relative 'slots'
# require_relative 'hilo'

class Player
  #Start the game.  Player has a name and wallet
  def initialize
    print "Welcome!"
    puts "\nWhat is your name?"
    @name = gets.strip.capitalize
  end

end 

class Wallet
  attr_accessor :money

  def initialize(money)
    @start_balance = money
    display
    start_balance
  end
  def display
    print "Here is your starting budget: #{@start_balance}\n"
  end
  def start_balance
    @current_balance = @start_balance
  end
#create a running total variable
  def current_balance
    puts "Your running total is $#{@current_balance}."
  end
#add an addition method to running balance
  def add(cash)
    @current_balance = @current_balance + cash
  end
#add a subtraction method to running balance
  def sub(cash)
    @current_balance = @current_balance - cash
  end
end


