require 'pokemon'
require 'types/fighting'

class Mankey < Pokemon
  include Types::Fighting

  def initialize
    traits = {id: 56, name: 'Mankey', hp: 40, attack: 80, defense: 35, speed: 70, sp_atk: 35, sp_def: 45}
    super(**traits.merge(Mankey.type_traits))
  end
end