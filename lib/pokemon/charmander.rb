require 'pokemon'
require 'types/fire'

class Charmander < Pokemon
  include Types::Fire
  def initialize
    traits = { id: 4, name: 'Charmander', hp: 39, attack: 52, defense: 43, speed: 65, sp_atk: 60, sp_def: 50 }
    super(**traits.merge(Charmander.type_traits))
  end
end