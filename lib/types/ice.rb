module Types
  module Ice
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def type_traits
        {type: :ice, weaknesses: %i[fighting rock steel fire], resistances: %i[ice], immunities: %i[]}
      end

      def type_icon
        '❄️'
      end
    end
  end
end