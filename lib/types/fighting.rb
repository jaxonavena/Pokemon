  module Types
    module Fighting
      def self.included(base)
        base.extend(ClassMethods)
      end

      module ClassMethods
        def type_traits
          {type: :fighting, weaknesses: %i[flying psychic fairy], resistances: %i[rock bug grass dark], immunities: %i[]}
        end
      end
    end
  end