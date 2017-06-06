require_relative "./Turn.rb"
require_relative "./Player.rb"


class Game

  def initialize
    @players = [Player.new('Primus'), Player.new('Secundus')]
    @current_player_index = 0
  end



  def play
    while (two_players?) do
      turn = Turn.new(@players[@current_player_index])
      turn.ask_question
      turn.get_user_answer
      turn.evaluate_answer
      check_score
      puts "------------------ NEW TURN ----------------------"
      next_player
    end
    end_game
  end

  def check_score
    puts "#{@players[0].name} : #{@players[0].life}/3 #{@players[1].name} : #{@players[1].life}/3"

  end

  def end_game
    if @players[0].game_over?
      puts "#{@players[1].name} is the WINNER!!"
    else
      puts "#{@players[0].name} is the WINNER!!"
    end
  end

  private

  def next_player
    if @current_player_index == 0
      @current_player_index = 1
    else
      @current_player_index = 0
    end
  end

  def two_players?
    !(@players[0].game_over? || @players[1].game_over?)
  end

end





