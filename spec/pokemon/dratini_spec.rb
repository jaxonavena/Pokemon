require 'spec_helper'
require 'pokemon'

RSpec.describe Pokemon::Dratini do
  subject { described_class.new() }

  it 'is a valid Dratini' do
    expect { subject }.not_to raise_error
  end

  it_behaves_like 'dragon type'
end