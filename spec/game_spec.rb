
require 'game'

  describe Game do
    subject(:game) {described_class.new(player, player2)}
    let(:player) {double :player}
    let(:player2) {double :player}

  describe '#attack' do
    it 'damages the player' do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end
end
