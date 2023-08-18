require 'spec_helper'
require 'pokemon'

RSpec.describe Pokemon::Dialga do
  subject { described_class.new() }

  it 'is a valid Dialga' do
    expect { subject }.not_to raise_error
  end

  it_behaves_like 'dragon type'
  it_behaves_like 'steel type'
end