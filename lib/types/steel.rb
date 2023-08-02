module Types
  module Steel
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def type_traits
        {type: :steel, weaknesses: %i[fighting ground fire], resistances: %i[normal flying rock bug steel grass psychic ice dragon fairy poison], immunities: %i[poison]}
      end
    end
  end
end