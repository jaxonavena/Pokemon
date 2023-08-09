require_relative 'base'
require_relative 'types/steel'
module Pokemon

  class Registeel < Base
    include Types::Steel
    def initialize
      traits = { id: 379, name: 'Registeel', hp: 80, atk_power: 75, defense: 150, speed: 50, sp_atk: 75, sp_def: 150 }
      super(**traits.merge(Registeel.type_traits))
    end
  end
end