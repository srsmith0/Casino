require_relative 'hilo'
require_relative 'slots'

class Casino 
  def initialize
    greet
    main_menu

  end
  def greet
  	puts "Hello and welcome to the Ruby Casino! What is your name?"
  	@user_name = gets.strip
  	puts "How much money do you have?"
  	@current_balance = gets.to_i
  end

  def main_menu
    puts "#{@user_name}, what would you like to do?"
    puts " 1) Slots"
    puts " 2) High/Low"
    puts " 3) Exit"
    puts " "
    print "> "
    case gets.strip
      when "1"
        puts "Slots"
        a = Slots.new(@current_balance)
        a.slot_game
        main_menu
      when "2"
        puts "High/Low"
       y = HighLow.new(@current_balance)
       y.hilo_game
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

