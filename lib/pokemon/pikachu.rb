require_relative 'base'

module Pokemon
  class Pikachu < Base
    apply_type(:electric)

    def initialize
      super(id: 25, name: 'Pikachu', hp: 35, atk_power: 55, defense: 40, speed: 90, sp_atk: 50, sp_def: 50)
    end
  end
end
