require 'spec_helper'
require 'pokemon'

RSpec.describe Pokemon::Squirtle do
  subject { described_class.new() }

  it "is a valid Squirtle" do
    expect { subject }.not_to raise_error
  end

  it_behaves_like 'water type'
end