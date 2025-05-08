require 'spec_helper'
require 'pokemon'

RSpec.describe Pokemon::Absol do
  subject { described_class.new() }

  it 'is a valid Absol' do
    expect { subject }.not_to raise_error
  end

  it_behaves_like 'dark type'
end