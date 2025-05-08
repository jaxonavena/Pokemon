require_relative 'base'
module Pokemon
  class Clefairy < Base
    apply_type(:fairy)

    def initialize
      super(id: 35, name: 'Clefairy', hp: 70, atk_power: 45, defense: 48, speed: 35, sp_atk: 60, sp_def: 65)
    end
  end
end