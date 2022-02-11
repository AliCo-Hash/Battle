require_relative '../lib/player.rb'

describe Player do
  subject(:meghan) { Player.new("Meghan") }
  subject(:ali) { Player.new("Ali") }

  describe "#name" do
    it "should return a name" do
      expect(meghan.name).to eq "Meghan"
    end
  end

  describe '#hit_points' do
    it 'has default hit points' do
      expect(ali.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end
    
  describe '#attack' do
    it "allows a player to attack another player" do
      expect(ali).to receive(:take_damage)
      meghan.attack(ali)
    end
  end

  describe '#take_damage' do
    it "reduces players hit_points" do
      expect { ali.take_damage }.to change { ali.hit_points }.by(-10)
    end
  end
end