require_relative '../lib/board'

describe Board do
  subject(:board) { described_class.new }

  describe '#initialize' do
    it 'creates a new connect 4 board(default)' do
      expect(board).to have_attributes(board: 
        [["_", "_", "_", "_", "_", "_", "_"], 
        ["_", "_", "_", "_", "_", "_", "_"], 
        ["_", "_", "_", "_", "_", "_", "_"], 
        ["_", "_", "_", "_", "_", "_", "_"], 
        ["_", "_", "_", "_", "_", "_", "_"], 
        ["_", "_", "_", "_", "_", "_", "_"]])
    end
  end

  describe '#place_move' do
    it 'Places a move at the seven\'nt column' do
      board.place_move(7)
      expect(board).to have_attributes(board: 
        [["_", "_", "_", "_", "_", "_", "_"], 
        ["_", "_", "_", "_", "_", "_", "_"], 
        ["_", "_", "_", "_", "_", "_", "_"], 
        ["_", "_", "_", "_", "_", "_", "_"], 
        ["_", "_", "_", "_", "_", "_", "_"], 
        ["_", "_", "_", "_", "_", "_", "x"]])
    end
  end

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