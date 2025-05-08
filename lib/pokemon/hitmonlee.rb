require_relative 'base'
require_relative '../types/fighting'
module Pokemon

  class Hitmonlee < Base
    include ::Types::Fighting

    def initialize
      traits = {id: 106, name: 'Hitmonlee', hp: 50, atk_power: 120, defense: 53, speed: 87, sp_atk: 35, sp_def: 110}
      super(**traits.merge(Hitmonlee.type_traits))
    end
  end
end