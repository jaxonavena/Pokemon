require_relative 'base'
module Pokemon
  class Snorunt < Base
    apply_type(:ice)

    def initialize
      super(id: 361, name: 'Snorunt', hp: 50, atk_power: 50, defense: 50, speed: 50, sp_atk: 50, sp_def: 50)
    end
  end
end