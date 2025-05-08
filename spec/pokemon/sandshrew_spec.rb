require 'spec_helper'
require 'pokemon'

RSpec.describe Pokemon::Sandshrew do
  subject { described_class.new() }

  it 'is a valid Sandshrew' do
    expect { subject }.not_to raise_error
  end

  it_behaves_like 'ground type'
end