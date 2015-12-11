class Player
  ATTACK_AMOUNT = 10
  DEFAULT_HP = 60
  attr_reader :name, :hp



  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def damage
    @hp -= ATTACK_AMOUNT
  end

end
