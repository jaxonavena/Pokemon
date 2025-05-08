require_relative 'base'
require_relative '../types/ground'
module Pokemon

  class Sandshrew < Base
    include ::Types::Ground

    def initialize
      traits = {id: 27, name: 'Sandshrew', hp: 50, atk_power: 75, defense: 85, speed: 40, sp_atk: 20, sp_def: 30}
      super(**traits.merge(Sandshrew.type_traits))
    end
  end
end