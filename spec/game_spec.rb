require 'game'

describe Game do

  let(:luca)    { double :luca }
  let(:cesare)  { double :Cesare }
  subject(:game){ described_class.new(luca, cesare)}

  describe '#attack' do
    it 'returns the player\'s HP - 10' do
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

end
