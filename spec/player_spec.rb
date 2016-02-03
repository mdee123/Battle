require 'Player'

describe Player do
subject(:player) {described_class.new ('tom')}
  it 'can read name' do
    expect(player.name).to eq 'tom'
  end
end
