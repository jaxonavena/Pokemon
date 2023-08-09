require_relative 'base'
require_relative 'types/normal'
module Pokemon

  class Meowth < Base
    include Types::Normal

    def initialize
      traits = {id: 52, name: 'Meowth', hp: 40, atk_power: 45, defense: 35, speed: 90, sp_atk: 40, sp_def: 40}
      super(**traits.merge(Meowth.type_traits))
    end
  end
end