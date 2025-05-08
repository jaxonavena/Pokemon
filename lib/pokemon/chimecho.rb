require_relative 'base'
module Pokemon
  class Chimecho < Base
    apply_type(:psychic)

    def initialize
      super(id: 358, name: 'Chimecho', hp: 65, atk_power: 50, defense: 70, speed: 65, sp_atk: 95, sp_def: 80)
    end
  end
end