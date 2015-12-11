class Player
  ATTACK_AMOUNT = 10
  DEFAULT_HP = 60
  attr_reader :name, :hp, :alive, :damages



  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
    @alive = true
  end

  def damage
    @damages = Kernel.rand(20)
    @hp -= @damages
  end


  def make_dead
    @alive = false
  end

end
