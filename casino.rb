#Start the game.  Player has a name and wallet
#wallet should have own class with add and remove methods

#player can go to games via a menu...high/low, slots

#use classes to start casino, each game, and bankroll

#player can place bets and wins/loses

#ability to move between games
class Casino 
  #player can go to games via a menu...high/low, slots
  def initialize
    main_menu
  end
  def main_menu
    puts "hey #{@user_name}, what would you like to do?"
    puts " 1) Slots"
    puts " 2) High/Low"
    puts " 3) Exit"
    puts " "
    print "> "
    case gets.strip
      when "1"
        puts "Slots"
        main_menu
      when "2"
        puts "High/Low"
        main_menu
      when "3"
        puts "Have a nice day!"
        exit
      else 
        puts "Oops! Invalid Input. Try something else."
        main_menu
      end
    end
end

class Player
  #Start the game.  Player has a name and wallet
  def initialize
    print "Welcome!"
    puts "\nWhat is your name?"
    @name = gets.strip.capitalize
  end

end 
#player can place bets and wins/loses
#ability to move between games
#wallet should have own class with add and remove methods
class Wallet
  def initialize
    @start_balance = 100
  end
  def display
    print "Here is your starting budget: #{@start_balance}\n"
  end
end

# new_player = Player.new
# wallet = Wallet.new
# wallet.display
c = Casino.new


# class LunchLady
#   def  initialize
#     @main_dishes = [
#       MainDish.new('Meatloaf', 5),
#       MainDish.new('Tacos', 3),
#       MainDish.new('Casserole', 6),
#       MainDish.new('Burger', 4)]
#     @side_dishes = [
#       SideDish.new('Beans', 1),
#       SideDish.new('Rice', 2),
#       SideDish.new('Corn', 1)]
#   end
#   class MainDish
#     def  initialize(dish, price)
#       @dish = dish
#       @price = price
#     end
  
#     def info
#       return "#{@dish} - $#{@price}"
#     end
#     def name
#       return "#{@dish}"
#     end
#   end

