require 'active_support/all'
require 'YAML'

module Pokemon
  class Base
    def self.load_type_data()
      filepath = 'data/types.yml'
      type_data = YAML.load_file(filepath)
      type_data = type_data.with_indifferent_access if type_data.is_a?(Hash)
      type_data
    end

    BASE_TYPE_TRAITS = {
      bug: 1,
      dark: 1,
      dragon: 1,
      electric: 1,
      fairy: 1,
      fighting: 1,
      fire: 1,
      flying: 1,
      ghost: 1,
      grass: 1,
      ground: 1,
      ice: 1,
      normal: 1,
      poison: 1,
      psychic: 1,
      rock: 1,
      steel: 1,
      water: 1
    }.with_indifferent_access.freeze
    BASE_TYPE = [].freeze
    BASE_TYPE_ICON = ''.freeze

    def self.apply_type(*new_types)
      type_data = load_type_data
      new_types.each do |new_type|
        new_type = new_type.is_a?(Symbol) ? type_data[new_type] : new_type
        @type = (type << new_type[:name]).compact
        @type_traits ||= BASE_TYPE_TRAITS.dup

        new_type[:traits].each do |trait, value|
          @type_traits[trait] *= value
        end
        @type_icon = type_icon + new_type.fetch(:icon, '')
      end
    end

    def self.type
      @type || BASE_TYPE.dup
    end

    def self.type_icon
      @type_icon || BASE_TYPE_ICON.dup
    end

    def self.type_traits
      @type_traits || BASE_TYPE_TRAITS.dup
    end

    attr_accessor :id, :name, :type, :hp, :atk_power, :defense, :speed, :sp_atk, :sp_def, :weaknesses, :resistances, :immunities, :defending

    def initialize(id:, name:, hp:, atk_power:, defense:, speed:, sp_atk:, sp_def:)
      @id = id
      @name = name
      @type = Array.wrap(self.class.type)
      @hp = hp
      @atk_power = atk_power
      @defense = defense
      @speed = speed
      @sp_atk = sp_atk
      @sp_def = sp_def
      @weaknesses = self.class.type_traits.select { |type, value| value > 1.0 }.keys.map(&:to_sym)
      @resistances = self.class.type_traits.select { |type, value| value > 0 && value < 1.0 }.keys.map(&:to_sym)
      @immunities = self.class.type_traits.select { |type, value| value.zero? }.keys.map(&:to_sym)
      @defending = false
    end

    def vulnerable_to?(type)
      @weaknesses.include?(type)
    end

    def resistant_to?(type)
      @resistances.include?(type)
    end

    def immune_to?(type)
      @immunities.include?(type)
    end

    def attack(target)
      @defending = false
      target.defend(@atk_power, @type) # TODO: change type to atk_type to make attacks more specfic
      puts "#{self} used #{@type}-attack it was effective!"
      puts "#{target} is now at #{target.hp} HP!"
    end

    def defend(atk_power, atk_type)
      # You have to call defend before you're attacked, so how do I get the incoming damage into the call?
      # Maybe a queue_defend call, then once the other player fires, defend the damage
      # use flag
      damage = if defending || immune_to?(atk_type)
                 0
               elsif resistant_to?(atk_type)
                 (atk_power / 2) - @defense
               elsif vulnerable_to?(atk_type)
                 (atk_power * 2) - @defense
               else # normal
                 atk_power - @defense
               end
      @hp -= [damage, 0].max
    end

    def to_s
      "#{@name} #{self.class.type_icon}"
    end

    def awake?
      @hp.positive?
    end

    def fainted?
      !awake?
    end
  end
end