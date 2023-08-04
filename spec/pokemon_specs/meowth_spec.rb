require 'spec_helper'
require 'pokemon'
require 'pokemon/meowth'

RSpec.describe Meowth do
  subject { described_class.new() }

  it "is a valid Meowth" do
    expect { subject }.not_to raise_error
  end

  it_behaves_like 'normal type'
end