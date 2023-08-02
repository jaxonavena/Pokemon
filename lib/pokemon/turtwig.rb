require 'pokemon'
require 'types/grass'

class Turtwig < Pokemon
  include Types::Grass
  def initialize
    traits = {id: 387, name: 'Turtwig', hp: 55, attack: 68, defense: 64, speed: 31, sp_atk: 45, sp_def: 55}
    super(**traits.merge(Turtwig.type_traits))
  end
end