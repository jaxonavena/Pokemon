require 'spec_helper'
require 'pokemon'

RSpec.describe Pokemon::Ditto do
  subject { described_class.new() }

  it "is a valid Ditto" do
    expect { subject }.not_to raise_error
  end

  it_behaves_like 'normal type'
end