require_relative 'base'
require_relative '../types/water'
module Pokemon

  class Psyduck < Base
    include ::Types::Water
    def initialize
      traits = {id: 54, name: 'Psyduck', hp: 50, atk_power: 52, defense: 48, speed: 55, sp_atk: 65, sp_def: 50}
      super(**traits.merge(Psyduck.type_traits))
    end
  end
end