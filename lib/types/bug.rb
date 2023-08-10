  module Types
    module Bug
      def self.included(base)
        base.extend(ClassMethods)
      end

      module ClassMethods
        def type_traits
          {type: :bug, weaknesses: %i[flying rock fire], resistances: %i[fighting ground grass], immunities: %i[]}
        end
      end
    end
  end