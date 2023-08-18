require_relative 'base'
# require_relative '../types/normal'
module Pokemon

  class Meowth < Base
    apply_type(:normal)

    def initialize
      super(id: 52, name: 'Meowth', hp: 40, atk_power: 45, defense: 35, speed: 90, sp_atk: 40, sp_def: 40)
    end
  end
end