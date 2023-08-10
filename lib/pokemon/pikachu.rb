require_relative 'base'
require_relative '../types/electric'
module Pokemon
  class Pikachu < Base
    include ::Types::Electric

    def initialize
      traits = {id: 25, name: 'Pikachu', hp: 35, atk_power: 55, defense: 40, speed: 90, sp_atk: 50, sp_def: 50}
      super(**traits.merge(Pikachu.type_traits))
    end
  end
end
