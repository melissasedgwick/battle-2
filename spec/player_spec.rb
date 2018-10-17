require 'player'

describe Player do

  subject(:dave) { Player.new('Dave') }
  subject(:mittens) { Player.new('Mittens') }

  it 'should return its name' do
    expect(dave.name).to eq("Dave")
  end

  it 'should return hit points' do
    expect(dave.hp).to eq Player::DEFAULT_HP
  end

  it 'should reduce players HP by 10' do
    expect{ mittens.reduce_hp }.to change { mittens.hp }.by -10
  end

end
