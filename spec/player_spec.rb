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
      expect(luca.hp).to eq Player::HP
    end
  end

  describe '#attack' do
    it 'returns the player\'s HP - 10' do
      expect(cesare).to receive(:receive_damage)
      luca.attack(cesare)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player\'s HP by 10' do
      expect {cesare.receive_damage }.to change { cesare.hp }.by(-10)
    end
  end
end
