require 'spec_helper'
require 'pokemon'

RSpec.describe Pokemon::Hitmonlee do
  subject { described_class.new() }

  it 'is a valid Hitmonlee' do
    expect { subject }.not_to raise_error
  end

  it_behaves_like 'fighting type'
end