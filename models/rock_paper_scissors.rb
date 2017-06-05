class RockPaperScissors

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  # def game
  #   return "Rock Wins" if (@player1 == 'rock' && @player2 == 'scissors') || (@player1 == 'scissors' && @player2 == 'rock')
  #   return "Paper Wins" if (@player1 == 'paper' && @player2 == 'rock') || (@player1 == 'rock' && @player2 == 'paper')
  #   return "Scissors Wins" if (@player1 == 'scissors' && @player2 == 'paper') || (@player1 == 'paper' && @player2 == 'scissors')
  #   return "Draw" if @player1 == @player2
  # end

  def game
    return "Player 1 wins with #{@player1}" if (@player1 == 'rock' && @player2 == 'scissors') || (@player1 == 'paper' && @player2 == 'rock') || (@player1 == 'scissors' && @player2 == 'paper') 
    return "Player 2 wins with #{@player2}" if (@player1 == 'scissors' && @player2 == 'rock') || (@player1 == 'rock' && @player2 == 'paper') || (@player1 == 'paper' && @player2 == 'scissors')
    return "Draw" if @player1 == @player2
  end
end