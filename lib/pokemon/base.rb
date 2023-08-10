module Pokemon
  class Base
    attr_accessor :id, :name, :type, :hp, :atk_power, :defense, :speed, :sp_atk, :sp_def, :weaknesses, :resistances, :immunities

    def initialize(id:, name:, type:, hp:, atk_power:, defense:, speed:, sp_atk:, sp_def:, weaknesses: [], resistances: [], immunities: [])
      @id = id
      @name = name
      @type = type
      @hp = hp
      @atk_power = atk_power
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

    def attack(target)
      puts target.hp
      target.hp -= @atk_power
      puts target.hp
    end

    def defend
      # You have to call defend before you're attacked, so how do I get the incoming damage into the call?
      # Maybe a queue_defend call, then once the other player fires, defend the damage
      #use flag
      @hp -= (incoming_damage - defense)
    end

    def to_s
      @name
    end

    def awake?
      @hp.positive?
    end

    def fainted?
      !awake?
    end
  end
end