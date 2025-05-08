require_relative 'base'
module Pokemon

  class Nosepass < Base
    apply_type(:rock)

    def initialize
      super(id: 299, name: 'Nosepass', hp: 30, atk_power: 45, defense: 135, speed: 30, sp_atk: 45, sp_def: 90)
    end
  end
end
