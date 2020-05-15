class Slots

  def initialize
    slot_bet
    slot_game
  end

  def slot_bet 
    puts "Enter $5"
    @slot_bet = gets.strip.to_i    
    if @slot_bet == 5
      #run program
      #subtract 5 from wallet
    else
      puts "Please enter $5"
      slot_bet 
    end
  end
  
  def multiplier(s1, s2, s3)
    if s1==s2 && s2==s3
      3
    elsif s1==s2 || s2==s3 || s1==s3
      2
    else
      0
    end
  end

  def display_slot
    puts "Slot result is #{@s_value1}, #{@s_value2}, #{@s_value2} !"
  end
  
  def slot_game
    @slot = [1, 2, 3, 4, 5, 6, 7]
    @s_value1 = @slot.sample
    @s_value2 = @slot.sample
    @s_value3 = @slot.sample
    display_slot
    slot_payout
  end

  def slot_payout
    @winnings = @slot_bet * multiplier(@s_value1, @s_value2, @s_value3)
    #add winnings to wallet
    puts @winnings
  end

  # def show_sum
  #   print "Sum is.."
  # end
end
#Pull lever
#Get 3 random numbers.  Compare numbers
#Pay out
#ask to play again

a = Slots.new



