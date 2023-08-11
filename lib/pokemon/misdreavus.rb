require_relative 'base'
require_relative '../types/ghost'
module Pokemon
  class Misdreavus < Base
    include ::Types::Ghost

    def initialize
      traits = {id: 200, name: 'Misdreavus', hp: 60, atk_power: 60, defense: 60, speed: 85, sp_atk: 85, sp_def: 85}
      super(**traits.merge(Misdreavus.type_traits))
    end
  end
end