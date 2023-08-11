module Types
  module Dragon
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def type_traits
        {type: :dragon, weaknesses: %i[ice dragon fairy], resistances: %i[fire water grass electric], immunities: %i[]}
      end

      def type_icon
        '🐲'
      end
    end
  end
end