  module Types
    module Water
      def self.included(base)
        base.extend(ClassMethods)
      end

      module ClassMethods
        def type_traits
          {type: :water, weaknesses: %i[grass electric], resistances: %i[steel fire water ice], immunities: %i[]}
        end
      end
    end
  end