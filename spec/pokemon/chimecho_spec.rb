require 'spec_helper'
require 'pokemon'

RSpec.describe Pokemon::Chimecho do
  subject { described_class.new() }

  it "is a valid chimecho" do
    expect { subject }.not_to raise_error
  end

  it_behaves_like 'psychic type'
end