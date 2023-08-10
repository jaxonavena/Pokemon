  module Types
    module Ground
      def self.included(base)
        base.extend(ClassMethods)
      end

      module ClassMethods
        def type_traits
          {type: :ground, weaknesses: %i[water grass ice], resistances: %i[poison ground rock electric], immunities: %i[electric]}
        end

        def type_icon
          '⛰️'
        end
      end
    end
  end