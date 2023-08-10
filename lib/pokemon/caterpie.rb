require_relative 'base'
require_relative '../types/bug'
module Pokemon
  class Caterpie < Base
    include ::Types::Bug

    def initialize
      traits = {id: 10, name: 'Caterpie', hp: 45, atk_power: 30, defense: 35, speed: 45, sp_atk: 20, sp_def: 20}
      super(**traits.merge(Caterpie.type_traits))
    end
  end
end