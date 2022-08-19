require_relative '../lib/board'

describe Board do
  subject(:board) { described_class.new }

  describe '#display_board' do
    it 'displays a new board' do
      answer = <<~HEREDOC
      ['_', '_', '_', '_', '_', '_', '_']
      ['_', '_', '_', '_', '_', '_', '_']
      ['_', '_', '_', '_', '_', '_', '_']
      ['_', '_', '_', '_', '_', '_', '_']
      ['_', '_', '_', '_', '_', '_', '_']
      ['_', '_', '_', '_', '_', '_', '_']
      HEREDOC
      expect(board.display_board).to eq(answer)
    end
  end
end