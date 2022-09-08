require_relative '../lib/player'

describe Player do
  describe '#initialize' do
    let(:name) { 'Player_Name' }
    let(:symbol) { 'x' }
    subject(:player) { described_class.new(name: name, symbol: symbol) }

    it 'creates a new Player object with the given name' do
      expect(subject.name).to eql(name)
    end

    it 'creates a new Player object with the given symbol' do
      expect(subject.symbol).to eql(symbol)
    end
  end
end