require 'spec_helper'
require 'pokemon'

RSpec.describe Pokemon do
  let(:a_valid_pokemon) { described_class.new(name: "Swagitha", hp: 100, id: 1, type: "Fire", attack: 10, defense:20, speed: 30, sp_atk: 40, sp_def: 50) }

  it "is a valid pokemon" do
    expect { a_valid_pokemon }.not_to raise_error
  end
end