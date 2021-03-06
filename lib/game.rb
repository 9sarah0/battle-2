class Game
  attr_reader :player_1, :player_2, :current_turn

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_turn = player_1
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turns
    @current_turn = opponent_of(current_turn)
  end


  def opponent_of(the_player)
    return player_1 if the_player == player_2
    player_2
  end

  def game_over?
    losing_players.any?
  end

  def loser
    losing_players.first
  end


  private

  def players
    @players = [player_1, player_2]
  end

  def losing_players
    players.select { |player| player.hit_points <= 0 }
  end
end
