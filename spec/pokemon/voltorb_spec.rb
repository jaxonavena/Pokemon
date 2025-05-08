require 'spec_helper'
require 'pokemon'

RSpec.describe Pokemon::Voltorb do
  subject { described_class.new() }

  it "is a valid Voltorb" do
    expect { subject }.not_to raise_error
  end

  it_behaves_like 'electric type'
end