require_relative 'base'
require_relative '../types/rock'
module Pokemon

  class Nosepass < Base
    include ::Types::Rock

    def initialize
      traits = {id: 299, name: 'Nosepass', hp: 30, atk_power: 45, defense: 135, speed: 30, sp_atk: 45, sp_def: 90}
      super(**traits.merge(Nosepass.type_traits))
    end
  end
end
