require_relative 'base'
module Pokemon

  class Registeel < Base
    apply_type(:steel)
    def initialize
      super(id: 379, name: 'Registeel', hp: 80, atk_power: 75, defense: 150, speed: 50, sp_atk: 75, sp_def: 150)
    end
  end
end