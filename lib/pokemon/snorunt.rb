require_relative 'base'
require_relative '../types/ice'
module Pokemon
  class Snorunt < Base
    include ::Types::Ice

    def initialize
      traits = {id: 361, name: 'Snorunt', hp: 50, atk_power: 50, defense: 50, speed: 50, sp_atk: 50, sp_def: 50}
      super(**traits.merge(Snorunt.type_traits))
    end
  end
end