def rps(p1, p2)
  case p1
    when 'rock'
      if p2 == 'paper'
        return "Player 2 won!"
      end
      if p2 == 'scissors'
        return "Player 1 won!"
      end
      if p2 == 'rock'
        return "Draw!"
      end
    when 'paper'
      if p2 == 'paper'
        return "Draw!"
      end
      if p2 == 'scissors'
        return "Player 2 won!"
      end
      if p2 == 'rock'  
        return "Player 1 won!"
      end
    when 'scissors'
      if p2 == 'paper'
        return "Player 1 won!"
      end
      if p2 == 'scissors'
        return "Draw!"
      end
      if p2 == 'rock'
        return "Player 2 won!"
      end
  end  
end
