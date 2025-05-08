require_relative 'base'
require_relative '../types/bug'
module Pokemon
  class Metapod < Base
    include ::Types::Bug

    def initialize
      traits = {id: 11, name: 'Metapod', hp: 59, atk_power: 20, defense: 55, speed: 30, sp_atk: 25, sp_def: 25}
      super(**traits.merge(Metapod.type_traits))
    end
  end
end