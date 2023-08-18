require_relative 'base'
module Pokemon
  class Misdreavus < Base
    apply_type(:ghost)

    def initialize
      super(id: 200, name: 'Misdreavus', hp: 60, atk_power: 60, defense: 60, speed: 85, sp_atk: 85, sp_def: 85)
    end
  end
end