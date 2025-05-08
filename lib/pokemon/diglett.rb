require_relative 'base'
module Pokemon

  class Diglett < Base
    apply_type(:ground)

    def initialize
      super(id: 50, name: 'Diglett', hp: 10, atk_power: 55, defense: 25, speed: 95, sp_atk: 35, sp_def: 45)
    end
  end
end