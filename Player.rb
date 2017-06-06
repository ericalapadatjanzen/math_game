require_relative "./Turn.rb"



class Player

  attr_reader :name, :life

  def initialize(name)
    @life = 3
    @name = name
  end

  def wrong_answer
    @life -= 1
  end

  def game_over?
    @life == 0
  end


end






