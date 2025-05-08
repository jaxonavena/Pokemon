require_relative 'base'
require_relative '../types/fairy'
module Pokemon
  class Snubbull < Base
    include ::Types::Fairy

    def initialize
      traits = {id: 209, name: 'Snubbull', hp: 60, atk_power: 80, defense: 50, speed: 30, sp_atk: 40, sp_def: 40}
      super(**traits.merge(Snubbull.type_traits))
    end
  end
end