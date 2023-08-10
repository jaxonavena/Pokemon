require_relative 'base'
require_relative '../types/fighting'
module Pokemon

  class Mankey < Base
    include ::Types::Fighting

    def initialize
      traits = {id: 56, name: 'Mankey', hp: 40, atk_power: 80, defense: 35, speed: 70, sp_atk: 35, sp_def: 45}
      super(**traits.merge(Mankey.type_traits))
    end
  end
end