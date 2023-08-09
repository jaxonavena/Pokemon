require 'spec_helper'
require 'pokemon'

RSpec.describe Pokemon::Pikachu do
  subject { described_class.new() }

  it "is a valid Pikachu" do
    expect { subject }.not_to raise_error
  end

  it_behaves_like 'electric type'
end