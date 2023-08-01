class Pokemon
  attr_reader :id, :name, :type, :hp, :attack, :defense, :speed, :sp_atk, :sp_def

  def initialize(id:, name:, type:, hp:, attack:, defense:, speed:, sp_atk:, sp_def:)
    @id = id
    @name = name
    @type = type
    @hp = hp
    @attack = attack
    @defense = defense
    @speed = speed
    @sp_atk = sp_atk
    @sp_def = sp_def
  end

  #TODO add type classes with weaknesses/strengths
end