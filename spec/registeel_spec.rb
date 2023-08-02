require 'spec_helper'
require 'pokemon'
require 'pokemon/registeel'

RSpec.describe Registeel do
  subject { described_class.new() }

  it "is a valid registeel" do
    expect { subject }.not_to raise_error
  end

  it_behaves_like 'steel type'
end