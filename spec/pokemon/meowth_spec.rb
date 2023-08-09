require 'spec_helper'
require 'pokemon'

RSpec.describe Pokemon::Meowth do
  subject { described_class.new() }

  it "is a valid Meowth" do
    expect { subject }.not_to raise_error
  end

  it_behaves_like 'normal type'
end