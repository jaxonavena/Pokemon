require_relative 'base'
require_relative '../types/grass'
module Pokemon

  class Turtwig < Base
    include ::Types::Grass
    def initialize
      traits = {id: 387, name: 'Turtwig', hp: 55, atk_power: 68, defense: 64, speed: 31, sp_atk: 45, sp_def: 55}
      super(**traits.merge(Turtwig.type_traits))
    end
  end
end