require 'player'

describe Player do
  subject(:luca) { Player.new('Luca') }

  describe '#name' do
    it 'returns the player\'s name' do
      expect(luca.name).to eq 'Luca'
    end
  end
end
