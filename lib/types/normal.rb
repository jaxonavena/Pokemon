  module Types
    module Normal
      def self.included(base)
        base.extend(ClassMethods)
      end

      module ClassMethods
        def type_traits
          {type: :normal, weaknesses: %i[fighting], resistances: %i[], immunities: %i[ghost]}
        end

        def type_icon
          '🧍‍♂️'
        end
      end
    end
  end