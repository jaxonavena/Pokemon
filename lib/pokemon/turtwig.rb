require_relative 'base'
module Pokemon

  class Turtwig < Base
    apply_type(:grass)

    def initialize
      super(id: 387, name: 'Turtwig', hp: 55, atk_power: 68, defense: 64, speed: 31, sp_atk: 45, sp_def: 55)
    end
  end
end