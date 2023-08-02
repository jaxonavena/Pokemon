require 'pokemon'
require 'types/electric'

class Pikachu < Pokemon
  include Types::Electric

  def initialize
    traits = {id: 25, name: 'Pikachu', hp: 35, attack: 55, defense: 40, speed: 90, sp_atk: 50, sp_def: 50}
    super(**traits.merge(Pikachu.type_traits))
  end
end