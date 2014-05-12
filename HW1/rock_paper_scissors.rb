class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    raise RockPaperScissors::NoSuchStrategyError, 'Strategy must be one of R,P,S' if player1[1] =~ /[^RPS]/
    raise RockPaperScissors::NoSuchStrategyError, 'Strategy must be one of R,P,S' if player2[1] =~ /[^RPS]/
    return player1 if player1[1] == player2[1]
    if player1[1] == 'R'
      return player1 if player2[1] == 'S'
      return player2
    elsif player1[1] == 'S'
      return player1 if player2[1] == 'P'
      return player2
    elsif player1[1] == 'P'
      return player1 if player2[1] == 'R'
      return player2
    end
  end

  def self.tournament_winner(tournament)
    if tournament[0][0].is_a? String
      return RockPaperScissors.winner(tournament[0], tournament[1])
    else
      p1 = self.tournament_winner(tournament[0])
      p2 = self.tournament_winner(tournament[1])
      return RockPaperScissors.winner(p1, p2)
    end
  end

end
