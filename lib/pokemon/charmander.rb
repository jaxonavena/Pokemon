require_relative 'base'
module Pokemon
  class Charmander < Base
    apply_type(:fire)

    def initialize
      super(id: 4, name: 'Charmander', hp: 39, atk_power: 52, defense: 43, speed: 65, sp_atk: 60, sp_def: 50)
    end
  end
end