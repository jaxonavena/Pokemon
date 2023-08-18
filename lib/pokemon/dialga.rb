require_relative 'base'

module Pokemon
  class Dialga < Base
    apply_type(:dragon, :steel)

    def initialize
      super(id: 483, name: 'Dialga', hp: 100, atk_power: 120, defense: 120, speed: 90, sp_atk: 150, sp_def: 100)
    end
  end
end