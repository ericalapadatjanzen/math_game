require_relative "./Player.rb"
require_relative "./Game.rb"

class Turn

  def initialize(player)
    @player = player
    @user_answer = nil
    @num1 = Random.new.rand(1..20)
    @num2 = Random.new.rand(1..20)
    @answer = @num1 + @num2
  end

  def ask_question
    puts " #{@player.name}: What does #{@num1} plus #{@num2} equal?"
  end

  def get_user_answer
    @user_answer = gets.chomp
  end

  def evaluate_answer
    check = @answer.to_s == @user_answer
    if check == true
      puts "Good Job! ^___^ "
    else
      puts "WROOOOOOOOOOOOOONG ANSWER!!!!!!!! x__x"
      @player.wrong_answer
    end
  end
end
