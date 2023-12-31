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

    it 'is resistant to poison' do
      expect(subject).to be_resistant_to(:poison)
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