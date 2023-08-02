require 'pokemon'
require 'types/water'

class Poliwag < Pokemon
  include Types::Water

  def initialize
    traits = {id: 60, name: 'Poliwag', hp: 40, attack: 50, defense: 40, speed: 90, sp_atk: 40, sp_def: 40}
    super(**traits.merge(Poliwag.type_traits))
  end
end