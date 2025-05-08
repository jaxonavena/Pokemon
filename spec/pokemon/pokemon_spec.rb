require 'spec_helper'
require 'pokemon'

RSpec.describe Pokemon::Base do
  let(:a_valid_pokemon) { described_class.new(name: "Swagitha", hp: 100, id: 1, atk_power: 10, defense:20, speed: 30, sp_atk: 40, sp_def: 50) }
  class Pokemon::Base
    def self.reset_traits
      @type_traits = BASE_TYPE_TRAITS.dup
    end
  end

  it "is a valid pokemon" do
    expect { a_valid_pokemon }.not_to raise_error
  end

  context 'with traits' do
    after(:each) do
      Pokemon::Base.reset_traits
    end

    it "it can set a weakness" do
      Pokemon::Base.apply_type(traits: { fire: 2 })
      expect(a_valid_pokemon).to be_vulnerable_to(:fire)
    end

    it "it can set a resistance" do
      Pokemon::Base.apply_type(traits: { fire: 0.5 })
      expect(a_valid_pokemon).to be_resistant_to(:fire)
    end

    it "it can set an immunity" do
      Pokemon::Base.apply_type(traits: { fire: 0 })
      expect(a_valid_pokemon).to be_immune_to(:fire)
    end
  end
end