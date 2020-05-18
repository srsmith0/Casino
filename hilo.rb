
class HighLow

  def initialize(total)
    @current_total = total 
    hilo_game
  end

  def hilo_game
    greeting
    player_number
    dealer_number
    result
    show_current
    play_again
  end

  def greeting
    puts "Hello, welcome to High/Low. Please place your bet."
    @hilo_bet = gets.strip.to_i
      if @hilo_bet >= @current_total && @current_total > 0
        puts "You entered $#{@hilo_bet}\n"
        @current_total = @current_total - @hilo_bet
      else
        puts "You do not have enough money to play"
        exit
       end
  end
  
  def player_number
    @player_number = rand(20)
    puts "Your number is #{@player_number}"
    puts "Enter 1 for High or 2 for Low"
    @guess = gets.strip.to_i
  end

  def add_to_wallet
    @current_total = @current_total + @winnings
    puts "You currently have $#{@current_total}"
  end

  def show_current
    puts "You currently have $#{@current_total}."
  end

  def dealer_number
    @dealer_number = rand(20)
    puts "The dealer number is #{@dealer_number}"
  end

  def result
    if @player_number >= @dealer_number && @guess == 2
      puts "You win!"
      @winnings = @hilo_bet * 2
      puts "Your winnings are $#{@winnings}" 
      add_to_wallet 
    elsif @player_number <= @dealer_number && @guess == 1
      puts "You win!"
      @winnings = @hilo_bet * 2
      puts "Your winnings are $#{@winnings}"
      add_to_wallet
    else
      puts "Sorry, you lost."
    end
  end

   def play_again
   puts "Play again? Y or N to choose another game"
   @user_choice = gets.to_str.strip
    if @user_choice == "y"
      hilo_game
    elsif @user_choice == "n"
      puts "Good bye"
    else
      puts "Invalid input."
      play_again
    end
  end
end 