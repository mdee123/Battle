require 'Player'

describe Player do

  subject(:dave) { Player.new('Dave') }
  subject(:mittens) { Player.new('Mittens') }

  describe '#name' do
    it 'returns the name' do
      expect(dave.name).to eq 'Dave'
    end
  end

  describe '#points' do
    it 'returns the hit points' do
      expect(dave.points).to eq described_class::POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(mittens).to receive(:receive_damage)
      dave.attack(mittens)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { dave.receive_damage }.to change { dave.points }.by(-10)
    end
  end
 end
