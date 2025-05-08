require 'spec_helper'
require 'pokemon'

RSpec.describe Pokemon::Roggenrola do
  subject { described_class.new() }

  it 'is a valid Roggenrola' do
    expect { subject }.not_to raise_error
  end

  it_behaves_like 'rock type'
end