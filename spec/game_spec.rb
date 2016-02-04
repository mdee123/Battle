
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
    it 'switches player' do
      game.switch_player
      expect(game.current_player).to eq player2
    end
  end

end
