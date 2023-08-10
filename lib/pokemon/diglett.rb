require_relative 'base'
require_relative '../types/ground'
module Pokemon

  class Diglett < Base
    include ::Types::Ground

    def initialize
      traits = {id: 50, name: 'Diglett', hp: 10, atk_power: 55, defense: 25, speed: 95, sp_atk: 35, sp_def: 45}
      super(**traits.merge(Diglett.type_traits))
    end
  end
end