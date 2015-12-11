class Player
  ATTACK_AMOUNT = 10
  DEFAULT_HP = 60
  attr_reader :name, :hp, :alive



  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
    @alive = true
  end

  def damage
    @hp -= ATTACK_AMOUNT
  end


  def make_dead
    @alive = false
  end

end
