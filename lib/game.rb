class Game

  attr_reader :player1, :player2, :players

  def initialize(player1, player2)
    @players = [player1, player2]
  end


  def player1
    @players.first
  end

  def player2
    @players.last
  end



  def attack(player)
    player.damage
    player.make_dead if player.hp <= 0
  end


  def players_alive?
    players[1].alive
  end

  def switch
    @players.reverse!
  end

end
