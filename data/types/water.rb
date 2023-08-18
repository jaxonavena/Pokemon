  module Types
    module Water
      def self.included(base)
        base.extend(ClassMethods)
      end

      module ClassMethods
        def type_traits
          {type: :water, weaknesses: %i[grass electric], resistances: %i[steel fire water ice], immunities: %i[]}
        end

        def type_icon
          '💦'
        end
      end
    end
  end