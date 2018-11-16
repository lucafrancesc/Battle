require 'game'

describe Game do

  let(:luca)    { double :luca }
  let(:cesare)  { double :cesare }
  subject(:game){ described_class.new(luca, cesare)}

  describe '#attack' do
    it 'returns You lost' do
      expect(cesare).to receive(:lost?)
      expect(cesare).to receive(:receive_damage)
      game.attack(cesare)
    end
  end

  describe '#player1' do
    it 'retrieves the first player' do
      expect(game.player1).to eq luca
    end
  end

  describe '#player2' do
    it 'retrieves the second player' do
      expect(game.player2).to eq cesare
    end
  end

  describe '#current_player' do
    it 'returns first player' do
      expect(game.current_player).to eq luca
    end
  end

  describe '#switch_turn' do
    it 'changes players turn' do
      expect(game.current_player).to eq luca
      game.switch_player
      expect(game.current_player).to eq cesare
    end
  end

end
