  module Types
    module Fairy
      def self.included(base)
        base.extend(ClassMethods)
      end

      module ClassMethods
        def type_traits
          {type: :fairy, weaknesses: %i[poison steel], resistances: %i[fighting bug dark], immunities: %i[dragon]}
        end

        def type_icon
          '🧚🏿‍♀️'
        end
      end
    end
  end