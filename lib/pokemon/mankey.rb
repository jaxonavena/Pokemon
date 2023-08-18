require_relative 'base'
module Pokemon
  class Mankey < Base
    apply_type(:fighting)

    def initialize
      super(id: 56, name: 'Mankey', hp: 40, atk_power: 80, defense: 35, speed: 70, sp_atk: 35, sp_def: 45)
    end
  end
end