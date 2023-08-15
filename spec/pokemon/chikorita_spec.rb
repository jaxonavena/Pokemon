require 'spec_helper'
require 'pokemon'

RSpec.describe Pokemon::Chikorita do
  subject { described_class.new() }

  it "is a valid Chikorita" do
    expect { subject }.not_to raise_error
  end

  it_behaves_like 'grass type'
end