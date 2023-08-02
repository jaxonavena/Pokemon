require 'pokemon'
require 'types/fairy'

class Clefairy < Pokemon
  include Types::Fairy

  def initialize
    traits = {id: 35, name: 'Clefairy', hp: 70, attack: 45, defense: 48, speed: 35, sp_atk: 60, sp_def: 65}
    super(**traits.merge(Clefairy.type_traits))
  end
end