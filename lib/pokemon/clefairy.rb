require_relative 'base'
require_relative '../types/fairy'
module Pokemon
  class Clefairy < Base
    include ::Types::Fairy

    def initialize
      traits = {id: 35, name: 'Clefairy', hp: 70, atk_power: 45, defense: 48, speed: 35, sp_atk: 60, sp_def: 65}
      super(**traits.merge(Clefairy.type_traits))
    end
  end
end