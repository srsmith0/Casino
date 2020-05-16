#Start the game.  Player has a name and wallet
#wallet should have own class with add and remove methods

#player can go to games via a menu...high/low, slots

#use classes to start casino, each game, and bankroll

#player can place bets and wins/loses

#ability to move between games

# require_relative 'player'
# require_relative 'slots'
# require_relative 'hilo'

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

start = Casino.new

#player can place bets and wins/loses
#ability to move between games
#wallet should have own class with add and remove methods

