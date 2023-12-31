require 'spec_helper'
require 'pokemon'

RSpec.describe Pokemon::Mankey do
  subject { described_class.new() }

  it 'is a valid Mankey' do
    expect { subject }.not_to raise_error
  end

  it_behaves_like 'fighting type'
end