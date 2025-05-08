require_relative 'base'
module Pokemon

  class Psyduck < Base
    apply_type(:water)

    def initialize
      super(id: 54, name: 'Psyduck', hp: 50, atk_power: 52, defense: 48, speed: 55, sp_atk: 65, sp_def: 50)
    end
  end
end