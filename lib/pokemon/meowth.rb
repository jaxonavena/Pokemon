require 'pokemon'
require 'types/normal'

class Meowth < Pokemon
  include Types::Normal

  def initialize
    traits = {id: 52, name: 'Meowth', hp: 40, attack: 45, defense: 35, speed: 90, sp_atk: 40, sp_def: 40}
    super(**traits.merge(Meowth.type_traits))
  end
end