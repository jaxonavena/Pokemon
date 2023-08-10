  module Types
    module Electric
      def self.included(base)
        base.extend(ClassMethods)
      end

      module ClassMethods
        def type_traits
          {type: :electric, weaknesses: %i[ground], resistances: %i[flying steel electric], immunities: %i[]}
        end
      end
    end
  end