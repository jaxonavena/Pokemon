module Types
  module Psychic
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def type_traits
        {type: :psychic, weaknesses: %i[bug ghost dragon], resistances: %i[fighting psychic], immunities: %i[]}
      end

      def type_icon
        '🔮'
      end
    end
  end
end