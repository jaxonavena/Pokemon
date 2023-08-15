require_relative 'base'
require_relative '../types/grass'
module Pokemon

  class Chikorita < Base
    include ::Types::Grass
    def initialize
      traits = {id: 152, name: 'Chikorita', hp: 45, atk_power: 49, defense: 65, speed: 45, sp_atk: 49, sp_def: 65}
      super(**traits.merge(Chikorita.type_traits))
    end
  end
end