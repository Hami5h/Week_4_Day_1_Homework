class Game

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def game_result
    if @hand1 != @hand2

      if(@hand1 == 'paper')
        case @hand2
          when "scissors"
            return 'scissors wins'
          when "rock"
            return "paper wins"
        end
      end

      if(@hand1 == 'rock')
        case @hand2
        when 'scissors'
          return 'rock wins'
        when 'paper'
          return 'paper wins'
        end
      end

      if(@hand1 == 'scissors')
        case @hand2
        when 'rock'
          return 'rock wins'
        when 'paper'
          return 'scissors wins'
        end
      end

    end

    return "It's a draw"
    
  end

end
