module Types
  module Ghost
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def type_traits
        {type: :ghost, weaknesses: %i[ghost dark], resistances: %i[poison bug], immunities: %i[normal fighting]}
      end

      def type_icon
        '👻'
      end
    end
  end
end