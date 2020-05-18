class Slots
  def initialize(total)
    @current_total = total 
  end

  def slot_game
    slot_bet
    slot_value
    slot_payout
    add_to_wallet
    show_current
    play_again
  end

  def slot_bet 
    puts "Hello, welcome to the Slot machine. Please place your bet."
    @slot_bet = gets.strip.to_i
      if @slot_bet > 0 && @current_total > 0 && (@current_total - @slot_bet) >= 0
        puts "You entered $#{@slot_bet}"
        @current_total = @current_total - @slot_bet
      else
        puts "You do not have enough money to play"
        exit
       end
  end
  
  def multiplier(one, two, three)
    if one == two && two == three
     3
    elsif one == two || two == three || one == three
     2
    else
     0
    end
  end

  def display_slot
    puts "Slot result is #{@value1}, #{@value2}, #{@value2}"
  end

  def slot_value
    @slot = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    @value1 = rand(7)
    @value2 = rand(7)
    @value3 = rand(7)
    display_slot
  end

  def slot_payout
    @winnings = @slot_bet * multiplier(@value1, @value2, @value3)  ###Seems to be an issue on paying out if 2, 3 are a match for certain numbers
    puts "You won $#{@winnings}!"
  end

  def show_current
    puts "You currently have $#{@current_total}."
  end

  def add_to_wallet
    @current_total = @current_total + @winnings
    puts "You currently have $#{@current_total}"
  end

  def play_again
   puts "Play again? Y or N to choose another game"
   @user_choice = gets.to_str.strip
    if @user_choice == "y"
      slot_game
    elsif @user_choice == "n"
      puts "Good bye"
    else
      puts "Invalid input."
      play_again
    end
  end
end