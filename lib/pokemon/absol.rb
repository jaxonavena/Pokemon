require_relative 'base'
require_relative '../types/dark'
module Pokemon
  class Absol < Base
    include ::Types::Dark

    def initialize
      traits = {id: 359, name: 'Absol', hp: 65, atk_power: 130, defense: 60, speed: 75, sp_atk: 75, sp_def: 60}
      super(**traits.merge(Absol.type_traits))
    end
  end
end