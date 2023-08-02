require 'spec_helper'
require 'pokemon'
require 'pokemon/psyduck'

RSpec.describe Psyduck do
  subject { described_class.new() }

  it "is a valid psyduck" do
    expect { subject }.not_to raise_error
  end

  it_behaves_like 'water type'
end