require 'spec_helper'
require 'pokemon'
require 'pokemon/turtwig'

RSpec.describe Turtwig do
  subject { described_class.new() }

  it "is a valid Turtwig" do
    expect { subject }.not_to raise_error
  end

  it_behaves_like 'grass type'
end