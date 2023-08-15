require_relative 'base'
require_relative '../types/electric'
module Pokemon
  class Voltorb < Base
    include ::Types::Electric

    def initialize
      traits = {id: 100, name: 'Voltorb', hp: 40, atk_power: 30, defense: 50, speed: 100, sp_atk: 55, sp_def: 55}
      super(**traits.merge(Voltorb.type_traits))
    end
  end
end
