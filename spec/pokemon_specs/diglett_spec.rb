require 'spec_helper'
require 'pokemon'
require 'pokemon/diglett'

RSpec.describe Diglett do
  subject { described_class.new() }

  it 'is a valid Diglett' do
    expect { subject }.not_to raise_error
  end

  it_behaves_like 'ground type'
end