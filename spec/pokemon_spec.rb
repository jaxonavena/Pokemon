require 'spec_helper'
require 'pokemon'

RSpec.describe Pokemon do
  let(:a_valid_pokemon) { described_class.new("swagitha", 100) }

  it "has a name" do
    expect(a_valid_pokemon).to be_respond_to(:name)
  end

  it "has health" do
    expect(a_valid_pokemon).to be_respond_to(:health)
  end
end