require_relative 'base'
require_relative '../types/water'
module Pokemon

  class Squirtle < Base
    include ::Types::Water

    def initialize
      traits = {id: 7, name: 'Squirtle', hp: 44, atk_power: 48, defense: 65, speed: 43, sp_atk: 50, sp_def: 64}
      super(**traits.merge(Squirtle.type_traits))
    end
  end
end