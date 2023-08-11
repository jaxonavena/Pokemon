require_relative 'base'
require_relative '../types/dragon'
module Pokemon

  class Dratini < Base
    include ::Types::Dragon

    def initialize
      traits = {id: 147, name: 'Dratini', hp: 41, atk_power: 64, defense: 45, speed: 50, sp_atk: 50, sp_def: 50}
      super(**traits.merge(Dratini.type_traits))
    end
  end
end