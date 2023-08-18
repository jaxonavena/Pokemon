require 'active_support/all'

module Types
  module Steel
    def self.included(base)
      base.extend(ClassMethods)
      old_traits = base.class_variable_get(:@type_traits)
      new_traits = { fighting: 2, ground: 2, fire: 2, normal: 0.5, flying: 0.5, rock: 0.5, bug: 0.5, steel: 0.5, grass: 0.5, psychic: 0.5, ice: 0.5, dragon: 0.5, fairy: 0.5, poison: 0}
      base.class_variable_set(:@type, base.class_variable_get(:@type) << :steel)

      new_traits.each do |type, value|
        old_traits[type] *= value
      rescue NoMethodError => e
        require 'pry'; binding.pry
      end
      base.class_variable_set(:@type_traits, old_traits)
      base.class_variable_set(:@type_icon, base.class_variable_get(:@type_icon) + '⚙️')
    end

    module ClassMethods
      @type_traits ||= @@type_traits
      @type ||= @@type
      @type_icon ||= @@type_icon
    end
  end
end