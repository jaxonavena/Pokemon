module Types
  module Fire
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def type_traits
        {type: :fire, weaknesses: %i[ground rock water], resistances: %i[steel fire ice fairy], immunities: %i[]}
      end
    end
  end
end