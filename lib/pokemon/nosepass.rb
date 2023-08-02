require 'pokemon'
require 'types/rock'

class Nosepass < Pokemon
  include Types::Rock

  def initialize
    traits = {id: 299, name: 'Nosepass', hp: 30, attack: 45, defense: 135, speed: 30, sp_atk: 45, sp_def: 90}
    super(**traits.merge(Nosepass.type_traits))
  end
end