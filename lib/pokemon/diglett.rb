require 'pokemon'
require 'types/ground'

class Diglett < Pokemon
  include Types::Ground

  def initialize
    traits = {id: 50, name: 'Diglett', hp: 10, attack: 55, defense: 25, speed: 95, sp_atk: 35, sp_def: 45}
    super(**traits.merge(Diglett.type_traits))
  end
end