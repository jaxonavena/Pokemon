require_relative 'base'
require_relative '../types/normal'
module Pokemon

  class Ditto < Base
    include ::Types::Normal

    def initialize
      traits = {id: 132, name: 'Ditto', hp: 48, atk_power: 48, defense: 48, speed: 48, sp_atk: 48, sp_def: 48}
      super(**traits.merge(Ditto.type_traits))
    end
  end
end