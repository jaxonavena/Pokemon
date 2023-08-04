require 'spec_helper'
require 'pokemon'
require 'pokemon/nosepass'

RSpec.describe Nosepass do
  subject { described_class.new() }

  it 'is a valid Nosepass' do
    expect { subject }.not_to raise_error
  end

  it_behaves_like 'rock type'
end