require_relative 'base'
module Pokemon
  class Caterpie < Base
    apply_type(:bug)

    def initialize
      super(id: 10, name: 'Caterpie', hp: 45, atk_power: 30, defense: 35, speed: 45, sp_atk: 20, sp_def: 20)
    end
  end
end