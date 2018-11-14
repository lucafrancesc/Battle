require 'player'

describe Player do
  subject(:luca) { Player.new('Luca') }
  subject(:cesare) { Player.new('Cesare') }

  describe '#name' do
    it 'returns the player\'s name' do
      expect(luca.name).to eq 'Luca'
    end
  end

  describe '#health_points' do
    it 'returns the player\'s HP' do
      expect(luca.health_points).to eq 100
    end
  end

  describe '#attack' do
    it { expect(luca).to respond_to(:attack).with(1).argument}
    # it 'returns the player\'s HP - 10' do
    #   luca.
    #   expect(luca.health_points).to eq 90
    # end
  end
end
