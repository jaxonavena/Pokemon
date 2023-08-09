require 'spec_helper'
require 'pokemon'

RSpec.describe Pokemon::Clefairy do
  subject { described_class.new() }

  it 'is a valid Clefairy' do
    expect { subject }.not_to raise_error
  end

  it_behaves_like 'fairy type'
end