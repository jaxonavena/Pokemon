class Pokemon
  attr_accessor :id, :name, :type, :hp, :attack, :defense, :speed, :sp_atk, :sp_def, :weaknesses, :resistances, :immunities

  def initialize(id:, name:, type:, hp:, attack:, defense:, speed:, sp_atk:, sp_def:, weaknesses: [], resistances: [], immunities: [])
    @id = id
    @name = name
    @type = type
    @hp = hp
    @attack = attack
    @defense = defense
    @speed = speed
    @sp_atk = sp_atk
    @sp_def = sp_def
    @weaknesses = weaknesses
    @resistances = resistances
    @immunities = immunities
  end

  def vulnerable_to?(type)
    @weaknesses.include?(type)
  end

  def resistant_to?(type)
    @resistances.include?(type)
  end

  def immune_to?(type)
    @immunities.include?(type)
  end

  # def damage(target)
  #   target.hp -= @attack
  # end

  # def defend
  #   hp -= (incoming_damage - defense)
  # end
end

