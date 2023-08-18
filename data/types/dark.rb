module Types
  module Dark
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def type_traits
        {type: :dark, weaknesses: %i[fighting bug fairy], resistances: %i[ghost dark], immunities: %i[psychic]}
      end

      def type_icon
        '🌚'
      end
    end
  end
end