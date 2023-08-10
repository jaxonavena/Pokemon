  module Types
    module Grass
      def self.included(base)
        base.extend(ClassMethods)
      end

      module ClassMethods
        def type_traits
          {type: :grass, weaknesses: %i[flying poison bug fire ice], resistances: %i[water grass electric], immunities: %i[]}
        end

        def type_icon
          '🌱'
        end
      end
    end
  end