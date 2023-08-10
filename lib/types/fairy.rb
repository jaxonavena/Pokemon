  module Types
    module Fairy
      def self.included(base)
        base.extend(ClassMethods)
      end

      module ClassMethods
        def type_traits
          {type: :fairy, weaknesses: %i[poison steel], resistances: %i[fighting bug dark dragon], immunities: %i[dragon]}
        end
      end
    end
  end