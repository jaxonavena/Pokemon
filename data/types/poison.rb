  module Types
    module Poison
      def self.included(base)
        base.extend(ClassMethods)
      end

      module ClassMethods
        def type_traits
          {type: :poison, weaknesses: %i[ground psychic], resistances: %i[fighting poison bug grass fairy], immunities: %i[]}
        end

        def type_icon
          '☣️'
        end
      end
    end
  end