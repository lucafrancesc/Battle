require 'game'

describe Game do

  let(:luca)    { double :luca }
  let(:cesare)  { double :Cesare }
  # subject(:game){ described_class.new(luca, cesare)}
  subject(:game){ described_class.new }
  describe '#attack' do
    it 'returns the player\'s HP - 10' do
      expect(cesare).to receive(:receive_damage)
      game.attack(cesare)
    end
  end

end
