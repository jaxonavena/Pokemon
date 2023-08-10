module Pokemon
  class Base
    attr_accessor :id, :name, :type, :hp, :atk_power, :defense, :speed, :sp_atk, :sp_def, :weaknesses, :resistances, :immunities, :defending

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
      @defending = false
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
      @defending = false
      target.defend(@atk_power, @type) # TODO: change type to atk_type to make attacks more specfic
      puts "#{self} used #{@type} it was effective!"
      puts "#{target} is now at #{target.hp} HP!"
    end

    def defend(atk_power, atk_type)
      # You have to call defend before you're attacked, so how do I get the incoming damage into the call?
      # Maybe a queue_defend call, then once the other player fires, defend the damage
      # use flag
      damage = if defending || immune_to?(atk_type)
                 0
               elsif resistant_to?(atk_type)
                 (atk_power / 2) - @defense
               elsif vulnerable_to?(atk_type)
                 (atk_power * 2) - @defense
               else # normal
                 atk_power - @defense
               end
      @hp -= [damage, 0].max
    end

    def to_s
      "#{@name} #{self.class.type_icon}"
    end

    def awake?
      @hp.positive?
    end

    def fainted?
      !awake?
    end
  end
end