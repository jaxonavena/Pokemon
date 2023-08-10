module Types
  module Rock
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def type_traits
        {type: :rock, weaknesses: %i[fighting ground steel water grass], resistances: %i[normal flying poison fire], immunities: %i[]}
      end
    end
  end
end