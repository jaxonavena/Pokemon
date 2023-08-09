require 'spec_helper'
require 'pokemon'

RSpec.describe Pokemon::Poliwag do
  subject { described_class.new() }

  it "is a valid Poliwag" do
    expect { subject }.not_to raise_error
  end

  it_behaves_like 'water type'
end