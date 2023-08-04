require 'spec_helper'
require 'pokemon'
require 'pokemon/charmander'

RSpec.describe Charmander do
  subject { described_class.new() }

  it "is a valid charmander" do
    expect { subject }.not_to raise_error
  end

  it_behaves_like 'fire type'
end