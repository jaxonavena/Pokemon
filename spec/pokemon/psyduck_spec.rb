require 'spec_helper'
require 'pokemon'

RSpec.describe Pokemon::Psyduck do
  subject { described_class.new() }

  it "is a valid psyduck" do
    expect { subject }.not_to raise_error
  end

  it_behaves_like 'water type'
end