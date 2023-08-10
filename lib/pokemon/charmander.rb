require_relative 'base'
require_relative '../types/fire'
module Pokemon
  class Charmander < Base
    include ::Types::Fire

    def initialize
      traits = { id: 4, name: 'Charmander', hp: 39, atk_power: 52, defense: 43, speed: 65, sp_atk: 60, sp_def: 50 }
      super(**traits.merge(Charmander.type_traits))
    end
  end
end