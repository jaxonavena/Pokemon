require 'simulation'
require 'spec_helper'

RSpec.describe Simulation do
  subject { described_class.new }

  it 'is a valid simulation' do
    expect { subject }.not_to raise_error
  end

  it 'generates a list of all available pokemon' do
    expect { subject.send(:generate_list_of_pokemon) }.not_to raise_error
  end

  it 'generates two teams of six pokemon' do
    expect { subject.send(:generate_two_teams_of_six) }.not_to raise_error
  end

  let(:a_team) { Team.new(%w[Pikachu Squirtle Charizard Psyduck Mankey Diglett]) }
  let(:another_team) { Team.new(%w[Registeel Turtwig Meowth Clefairy Caterpie Charizard]) }
  it 'starts a battle' do
    expect { subject.start_battle(a_team, another_team) }.not_to raise_error
  end
end