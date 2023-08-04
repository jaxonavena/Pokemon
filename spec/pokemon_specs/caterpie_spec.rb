require 'spec_helper'
require 'pokemon'
require 'pokemon/caterpie'

RSpec.describe Caterpie do
  subject { described_class.new() }

  it 'is a valid Caterpie' do
    expect { subject }.not_to raise_error
  end

  it_behaves_like 'bug type'
end