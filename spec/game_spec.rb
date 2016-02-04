
require 'game'

  describe Game do
    subject(:game) {described_class.new(player, player2)}
    let(:player) {double :player}
    let(:player2) {double :player}

  describe '#attack' do
    it 'damages player 2' do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end

  describe '#switch_player' do
    it 'switches to player 2' do
      game.attack(player2)
      expect(game.switch_player).to eq false
    end
  end

end
