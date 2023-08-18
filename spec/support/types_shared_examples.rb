RSpec.shared_examples 'water type' do
  describe 'weaknesses' do
    it 'is vulnerable to grass' do
      expect(subject).to be_vulnerable_to(:grass)
    end

    it 'is vulnerable to electric' do
      expect(subject).to be_vulnerable_to(:electric)
    end
  end

  describe 'resistances' do
    it 'is resistant to steel' do
      expect(subject).to be_resistant_to(:steel)
    end

    it 'is resistant to fire' do
      expect(subject).to be_resistant_to(:fire)
    end

    it 'is resistant to water' do
      expect(subject).to be_resistant_to(:water)
    end

    it 'is resistant to ice' do
      expect(subject).to be_resistant_to(:ice)
    end
  end
end

RSpec.shared_examples 'fire type' do
  describe 'weaknesses' do
    it 'is vulnerable to ground' do
      expect(subject).to be_vulnerable_to(:ground)
    end

    it 'is vulnerable to rock' do
      expect(subject).to be_vulnerable_to(:rock)
    end

    it 'is vulnerable to water' do
      expect(subject).to be_vulnerable_to(:water)
    end
  end

  describe 'resistances' do
    it 'is resistant to steel' do
      expect(subject).to be_resistant_to(:steel)
    end

    it 'is resistant to fire' do
      expect(subject).to be_resistant_to(:fire)
    end

    it 'is resistant to ice' do
      expect(subject).to be_resistant_to(:ice)
    end

    it 'is resistant to fairy' do
      expect(subject).to be_resistant_to(:fairy)
    end
  end
end

RSpec.shared_examples 'grass type' do
  describe 'weaknesses' do
    it 'is vulnerable to flying' do
      expect(subject).to be_vulnerable_to(:flying)
    end

    it 'is vulnerable to poison' do
      expect(subject).to be_vulnerable_to(:poison)
    end

    it 'is vulnerable to bug' do
      expect(subject).to be_vulnerable_to(:bug)
    end

    it 'is vulnerable to fire' do
      expect(subject).to be_vulnerable_to(:fire)
    end

    it 'is vulnerable to ice' do
      expect(subject).to be_vulnerable_to(:ice)
    end
  end

  describe 'resistances' do
    it 'is resistant to water' do
      expect(subject).to be_resistant_to(:water)
    end

    it 'is resistant to grass' do
      expect(subject).to be_resistant_to(:grass)
    end

    it 'is resistant to electric' do
      expect(subject).to be_resistant_to(:electric)
    end
  end
end

RSpec.shared_examples 'type' do |types|
  def load_type_data
    filepath = 'data/types.yml'
    type_data = YAML.load_file(filepath)
    type_data = type_data.with_indifferent_access if type_data.is_a?(Hash)
  end

  type_data = load_type_data.slice(types).values
  traits = {}
  type_data.each do |data|
    traits.merge!(data[:traits]) { |trait, value| traits[trait] * value }
  end

  groups = { immune: [], resistant: [], vulnerable: [], normal: [],}
  traits.each do |trait, value|
    value = value.to_f
    case
    when value.zero?
      groups[:immune] << trait
    when value == 1.0
      groups[:normal] << trait
    when value > 1.0
      groups[:vulnerable] << trait
    when value < 1.0
      groups[:resistant] << trait
    else
      puts "Trait: #{trait}, Value: #{value}"
    end
  end
  groups.each do |group, traits|
    describe "#{group}" do
      traits.each do |trait|
        test = "be_#{trait}_to".to_sym
        it "to #{trait}" do
          expect(subject).to send(test, trait.to_sym)
        end
      end
    end
  end

  describe 'weaknesses' do
    it 'is vulnerable to ground' do
      expect(subject).to be_vulnerable_to(:ground)
    end
  end

  describe 'resistances' do
    it 'is resistant to flying' do
      expect(subject).to be_resistant_to(:flying)
    end

    it 'is resistant to steel' do
      expect(subject).to be_resistant_to(:steel)
    end

    it 'is resistant to electric' do
      expect(subject).to be_resistant_to(:electric)
    end
  end
end

RSpec.shared_examples 'electric type' do
  describe 'weaknesses' do
    it 'is vulnerable to ground' do
      expect(subject).to be_vulnerable_to(:ground)
    end
  end

  describe 'resistances' do
    it 'is resistant to flying' do
      expect(subject).to be_resistant_to(:flying)
    end

    it 'is resistant to steel' do
      expect(subject).to be_resistant_to(:steel)
    end

    it 'is resistant to electric' do
      expect(subject).to be_resistant_to(:electric)
    end
  end
end

RSpec.shared_examples 'poison type' do
  describe 'weaknesses' do
    it 'is vulnerable to ground' do
      expect(subject).to be_vulnerable_to(:ground)
    end

    it 'is vulnerable to psychic' do
      expect(subject).to be_vulnerable_to(:psychic)
    end
  end

  describe 'resistances' do
    it 'is resistant to fighting' do
      expect(subject).to be_resistant_to(:fighting)
    end

    it 'is resistant to poison' do
      expect(subject).to be_resistant_to(:poison)
    end

    it 'is resistant to bug' do
      expect(subject).to be_resistant_to(:bug)
    end

    it 'is resistant to grass' do
      expect(subject).to be_resistant_to(:grass)
    end

    it 'is resistant to fairy' do
      expect(subject).to be_resistant_to(:fairy)
    end
  end
end

RSpec.shared_examples 'bug type' do
  describe 'weaknesses' do
    it 'is vulnerable to flying' do
      expect(subject).to be_vulnerable_to(:flying)
    end

    it 'is vulnerable to rock' do
      expect(subject).to be_vulnerable_to(:rock)
    end

    it 'is vulnerable to fire' do
      expect(subject).to be_vulnerable_to(:fire)
    end
  end

  describe 'resistances' do
    it 'is resistant to fighting' do
      expect(subject).to be_resistant_to(:fighting)
    end

    it 'is resistant to ground' do
      expect(subject).to be_resistant_to(:ground)
    end

    it 'is resistant to grass' do
      expect(subject).to be_resistant_to(:grass)
    end
  end
end

RSpec.shared_examples 'fairy type' do
  describe 'weaknesses' do
    it 'is vulnerable to poison' do
      expect(subject).to be_vulnerable_to(:poison)
    end

    it 'is vulnerable to steel' do
      expect(subject).to be_vulnerable_to(:steel)
    end
  end

  describe 'resistances' do
    it 'is resistant to fighting' do
      expect(subject).to be_resistant_to(:fighting)
    end

    it 'is resistant to bug' do
      expect(subject).to be_resistant_to(:bug)
    end

    it 'is resistant to dark' do
      expect(subject).to be_resistant_to(:dark)
    end
  end

  describe 'immunities' do
    it 'is immune to dragon' do
      expect(subject).to be_immune_to(:dragon)
    end
  end
end

RSpec.shared_examples 'ground type' do
  describe 'weaknesses' do
    it 'is vulnerable to water' do
      expect(subject).to be_vulnerable_to(:water)
    end

    it 'is vulnerable to grass' do
      expect(subject).to be_vulnerable_to(:grass)
    end

    it 'is vulnerable to ice' do
      expect(subject).to be_vulnerable_to(:ice)
    end
  end

  describe 'resistances' do
    it 'is resistant to poison' do
      expect(subject).to be_resistant_to(:poison)
    end

    it 'is resistant to ground' do
      expect(subject).to be_resistant_to(:ground)
    end

    it 'is resistant to rock' do
      expect(subject).to be_resistant_to(:rock)
    end
  end

  describe 'immunities' do
    it 'is immune to electric' do
      expect(subject).to be_immune_to(:electric)
    end
  end
end

RSpec.shared_examples 'normal type' do
  describe 'weaknesses' do
    it 'is vulnerable to fighting' do
      expect(subject).to be_vulnerable_to(:fighting)
    end
  end

  describe 'immunities' do
    it 'is immune to ghost' do
      expect(subject).to be_immune_to(:ghost)
    end
  end
end

RSpec.shared_examples 'steel type' do
  describe 'weaknesses' do
    it 'is vulnerable to fighting' do
      expect(subject).to be_vulnerable_to(:fighting)
    end

    it 'is vulnerable to ground' do
      expect(subject).to be_vulnerable_to(:ground)
    end

    it 'is vulnerable to fire' do
      expect(subject).to be_vulnerable_to(:fire)
    end
  end

  describe 'resistances' do
    it 'is resistant to normal' do
      expect(subject).to be_resistant_to(:normal)
    end

    it 'is resistant to flying' do
      expect(subject).to be_resistant_to(:flying)
    end

    it 'is resistant to rock' do
      expect(subject).to be_resistant_to(:rock)
    end

    it 'is resistant to bug' do
      expect(subject).to be_resistant_to(:bug)
    end

    it 'is resistant to steel' do
      expect(subject).to be_resistant_to(:steel)
    end

    it 'is resistant to grass' do
      expect(subject).to be_resistant_to(:grass)
    end

    it 'is resistant to psychic' do
      expect(subject).to be_resistant_to(:psychic)
    end

    it 'is resistant to ice' do
      expect(subject).to be_resistant_to(:ice)
    end

    it 'is resistant to dragon' do
      expect(subject).to be_resistant_to(:dragon)
    end

    it 'is resistant to fairy' do
      expect(subject).to be_resistant_to(:fairy)
    end
  end

  describe 'immunities' do
    it 'is immune to poison' do
      expect(subject).to be_immune_to(:poison)
    end
  end
end

RSpec.shared_examples 'fighting type' do
  describe 'weaknesses' do
    it 'is vulnerable to flying' do
      expect(subject).to be_vulnerable_to(:flying)
    end

    it 'is vulnerable to psychic' do
      expect(subject).to be_vulnerable_to(:psychic)
    end

    it 'is vulnerable to fairy' do
      expect(subject).to be_vulnerable_to(:fairy)
    end
  end

  describe 'resistances' do
    it 'is resistant to rock' do
      expect(subject).to be_resistant_to(:rock)
    end

    it 'is resistant to bug' do
      expect(subject).to be_resistant_to(:bug)
    end

    it 'is resistant to grass' do
      expect(subject).to be_resistant_to(:grass)
    end

    it 'is resistant to dark' do
      expect(subject).to be_resistant_to(:dark)
    end
  end
end

RSpec.shared_examples 'rock type' do
  describe 'weaknesses' do
    it 'is vulnerable to fighting' do
      expect(subject).to be_vulnerable_to(:fighting)
    end

    it 'is vulnerable to ground' do
      expect(subject).to be_vulnerable_to(:ground)
    end

    it 'is vulnerable to steel' do
      expect(subject).to be_vulnerable_to(:steel)
    end

    it 'is vulnerable to water' do
      expect(subject).to be_vulnerable_to(:water)
    end

    it 'is vulnerable to grass' do
      expect(subject).to be_vulnerable_to(:grass)
    end
  end

  describe 'resistances' do
    it 'is resistant to normal' do
      expect(subject).to be_resistant_to(:normal)
    end

    it 'is resistant to flying' do
      expect(subject).to be_resistant_to(:flying)
    end

    it 'is resistant to poison' do
      expect(subject).to be_resistant_to(:poison)
    end

    it 'is resistant to fire' do
      expect(subject).to be_resistant_to(:fire)
    end
  end
end

RSpec.shared_examples 'dragon type' do
  before do
    puts "weaknesses: #{subject.weaknesses}"
    puts "resistances: #{subject.resistances}"
    puts "immunities: #{subject.immunities}"
  end
  describe 'weaknesses' do
    it 'is vulnerable to ice' do
      expect(subject).to be_vulnerable_to(:ice)
    end

    it 'is vulnerable to dragon' do
      expect(subject).to be_vulnerable_to(:dragon)
    end

    it 'is vulnerable to fairy' do
      expect(subject).to be_vulnerable_to(:fairy)
    end
  end

  describe 'resistances' do
    it 'is resistant to fire' do
      expect(subject).to be_resistant_to(:fire)
    end

    it 'is resistant to water' do
      expect(subject).to be_resistant_to(:water)
    end

    it 'is resistant to grass' do
      expect(subject).to be_resistant_to(:grass)
    end

    it 'is resistant to electric' do
      expect(subject).to be_resistant_to(:electric)
    end
  end
end

RSpec.shared_examples 'ghost type' do
  describe 'weaknesses' do
    it 'is vulnerable to ghost' do
      expect(subject).to be_vulnerable_to(:ghost)
    end

    it 'is vulnerable to dark' do
      expect(subject).to be_vulnerable_to(:dark)
    end
  end

  describe 'resistances' do
    it 'is resistant to poison' do
      expect(subject).to be_resistant_to(:poison)
    end

    it 'is resistant to bug' do
      expect(subject).to be_resistant_to(:bug)
    end
  end

  describe 'immunities' do
    it 'is immune to normal' do
      expect(subject).to be_immune_to(:normal)
    end

    it 'is immune to fighting' do
      expect(subject).to be_immune_to(:fighting)
    end
  end
end

RSpec.shared_examples 'psychic type' do
  describe 'weaknesses' do
    it 'is vulnerable to bug' do
      expect(subject).to be_vulnerable_to(:bug)
    end

    it 'is vulnerable to ghost' do
      expect(subject).to be_vulnerable_to(:ghost)
    end

    it 'is vulnerable to dragon' do
      expect(subject).to be_vulnerable_to(:dragon)
    end
  end

  describe 'resistances' do
    it 'is resistant to fighting' do
      expect(subject).to be_resistant_to(:fighting)
    end

    it 'is resistant to psychic' do
      expect(subject).to be_resistant_to(:psychic)
    end
  end
end\

RSpec.shared_examples 'dark type' do
  describe 'weaknesses' do
    it 'is vulnerable to fighting' do
      expect(subject).to be_vulnerable_to(:fighting)
    end

    it 'is vulnerable to bug' do
      expect(subject).to be_vulnerable_to(:bug)
    end

    it 'is vulnerable to fairy' do
      expect(subject).to be_vulnerable_to(:fairy)
    end
  end

  describe 'resistances' do
    it 'is resistant to ghost' do
      expect(subject).to be_resistant_to(:ghost)
    end

    it 'is resistant to dark' do
      expect(subject).to be_resistant_to(:dark)
    end
  end

  describe 'immunities' do
    it 'is immune to psychic' do
      expect(subject).to be_immune_to(:psychic)
    end
  end
end

RSpec.shared_examples 'ice type' do
  describe 'weaknesses' do
    it 'is vulnerable to fighting' do
      expect(subject).to be_vulnerable_to(:fighting)
    end

    it 'is vulnerable to rock' do
      expect(subject).to be_vulnerable_to(:rock)
    end

    it 'is vulnerable to steel' do
      expect(subject).to be_vulnerable_to(:steel)
    end

    it 'is vulnerable to fire' do
      expect(subject).to be_vulnerable_to(:fire)
    end
  end

  describe 'resistances' do
    it 'is resistant to ice' do
      expect(subject).to be_resistant_to(:ice)
    end
  end
end