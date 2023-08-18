require_relative 'base'
module Pokemon

  class Dratini < Base
    apply_type(:dragon)

    def initialize
      super(id: 147, name: 'Dratini', hp: 41, atk_power: 64, defense: 45, speed: 50, sp_atk: 50, sp_def: 50)
    end
  end
end