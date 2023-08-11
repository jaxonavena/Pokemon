require_relative 'base'
require_relative '../types/psychic'
module Pokemon
  class Chimecho < Base
    include ::Types::Psychic

    def initialize
      traits = {id: 358, name: 'Chimecho', hp: 65, atk_power: 50, defense: 70, speed: 65, sp_atk: 95, sp_def: 80}
      super(**traits.merge(Chimecho.type_traits))
    end
  end
end