require 'spec_helper'
require 'pokemon'

RSpec.describe Pokemon::Misdreavus do
  subject { described_class.new() }

  it "is a valid Misdreavus" do
    expect { subject }.not_to raise_error
  end

  it_behaves_like 'ghost type'
end