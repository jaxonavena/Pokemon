require_relative 'base'
require_relative '../types/rock'
module Pokemon

  class Roggenrola < Base
    include ::Types::Rock

    def initialize
      traits = {id: 524, name: 'Roggenrola', hp: 55, atk_power: 75, defense: 85, speed: 15, sp_atk: 25, sp_def: 25}
      super(**traits.merge(Roggenrola.type_traits))
    end
  end
end
