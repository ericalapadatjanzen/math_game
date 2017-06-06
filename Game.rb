require_relative "./Turn.rb"
require_relative "./Player.rb"


class Game

  def initialize()
    # @game_over = false
    # @player1 = Player.new('player 1')
    # @player2 = Player.new('player 2')

    @players = [Player.new('Primus'), Player.new('Secundus')]
    @current_player_index = 0
  end

  def play
    while (and_then_there_was_one?) do
      turn = Turn.new(@players[@current_player_index])
      turn.play
      if !(and_then_there_was_one?)
        next_player
      end
    end
  end

  private

  def next_player
    # update @current_player_index
  end

  def and_then_there_was_one?
    true
    # TODO
  end

end





