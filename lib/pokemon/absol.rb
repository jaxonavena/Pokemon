require_relative 'base'
module Pokemon
  class Absol < Base
    apply_type(:dark)

    def initialize
      super(id: 359, name: 'Absol', hp: 65, atk_power: 130, defense: 60, speed: 75, sp_atk: 75, sp_def: 60)
    end
  end
end
