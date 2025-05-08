require_relative 'base'
module Pokemon

  class Poliwag < Base
    apply_type(:water)

    def initialize
      super(id: 60, name: 'Poliwag', hp: 40, atk_power: 50, defense: 40, speed: 90, sp_atk: 40, sp_def: 40)
    end
  end
end