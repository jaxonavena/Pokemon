require_relative 'base'
require_relative '../types'
module Pokemon

  class Klink < Base
    include ::Types::Steel
    def initialize
      traits = { id: 599, name: 'Klink', hp: 40, atk_power: 55, defense: 70, speed: 30, sp_atk: 45, sp_def: 60 }
      super(**traits.merge(Klink.type_traits))
    end
  end
end