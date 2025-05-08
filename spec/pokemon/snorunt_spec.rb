require 'spec_helper'
require 'pokemon'

RSpec.describe Pokemon::Snorunt do
  subject { described_class.new() }

  it 'is a valid Snorunt' do
    expect { subject }.not_to raise_error
  end

  it_behaves_like 'ice type'
end