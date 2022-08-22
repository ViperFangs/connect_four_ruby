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
    let(:taken_space) {'o'}

    it 'Places a move at the seven\'nt column' do
      board.place_move(7)
      expect(board).to have_attributes(board: 
        [["_", "_", "_", "_", "_", "_", "_"], 
        ["_", "_", "_", "_", "_", "_", "_"], 
        ["_", "_", "_", "_", "_", "_", "_"], 
        ["_", "_", "_", "_", "_", "_", "_"], 
        ["_", "_", "_", "_", "_", "_", "_"], 
        ["_", "_", "_", "_", "_", "_", "#{taken_space}"]])
    end
  end

  describe '#display_board' do
    let(:taken_space) {'o'}

    it 'displays a new board' do
      answer = "[\"_\", \"_\", \"_\", \"_\", \"_\", \"_\", \"_\"]\n[\"_\", \"_\", \"_\", \"_\", \"_\", \"_\", \"_\"]\n[\"_\", \"_\", \"_\", \"_\", \"_\", \"_\", \"_\"]\n[\"_\", \"_\", \"_\", \"_\", \"_\", \"_\", \"_\"]\n[\"_\", \"_\", \"_\", \"_\", \"_\", \"_\", \"_\"]\n[\"_\", \"_\", \"_\", \"_\", \"_\", \"_\", \"_\"]\n"
      expect{ board.display_board }.to output(answer).to_stdout
    end

    context 'displays the board after placing a move' do
      it 'When you place the move in the 7th column' do 
        answer = "[\"_\", \"_\", \"_\", \"_\", \"_\", \"_\", \"_\"]\n[\"_\", \"_\", \"_\", \"_\", \"_\", \"_\", \"_\"]\n[\"_\", \"_\", \"_\", \"_\", \"_\", \"_\", \"_\"]\n[\"_\", \"_\", \"_\", \"_\", \"_\", \"_\", \"_\"]\n[\"_\", \"_\", \"_\", \"_\", \"_\", \"_\", \"_\"]\n[\"_\", \"_\", \"_\", \"_\", \"_\", \"_\", \"#{taken_space}\"]\n"
        expect{ board.place_move(7).display_board }.to output(answer).to_stdout
      end

      it 'When you place the move in the 6th column' do 
        answer = "[\"_\", \"_\", \"_\", \"_\", \"_\", \"_\", \"_\"]\n[\"_\", \"_\", \"_\", \"_\", \"_\", \"_\", \"_\"]\n[\"_\", \"_\", \"_\", \"_\", \"_\", \"_\", \"_\"]\n[\"_\", \"_\", \"_\", \"_\", \"_\", \"_\", \"_\"]\n[\"_\", \"_\", \"_\", \"_\", \"_\", \"_\", \"_\"]\n[\"_\", \"_\", \"_\", \"_\", \"_\", \"#{taken_space}\", \"_\"]\n"
        expect{ board.place_move(6).display_board }.to output(answer).to_stdout
      end

      it 'When you place the move in the 6th and 7th column' do 
        answer = "[\"_\", \"_\", \"_\", \"_\", \"_\", \"_\", \"_\"]\n[\"_\", \"_\", \"_\", \"_\", \"_\", \"_\", \"_\"]\n[\"_\", \"_\", \"_\", \"_\", \"_\", \"_\", \"_\"]\n[\"_\", \"_\", \"_\", \"_\", \"_\", \"_\", \"_\"]\n[\"_\", \"_\", \"_\", \"_\", \"_\", \"_\", \"_\"]\n[\"_\", \"_\", \"_\", \"_\", \"_\", \"#{taken_space}\", \"#{taken_space}\"]\n"
        expect{ board.place_move(6).place_move(7).display_board }.to output(answer).to_stdout
      end

      it 'When you place 2 moves in the 7th column' do 
        answer = "[\"_\", \"_\", \"_\", \"_\", \"_\", \"_\", \"_\"]\n[\"_\", \"_\", \"_\", \"_\", \"_\", \"_\", \"_\"]\n[\"_\", \"_\", \"_\", \"_\", \"_\", \"_\", \"_\"]\n[\"_\", \"_\", \"_\", \"_\", \"_\", \"_\", \"_\"]\n[\"_\", \"_\", \"_\", \"_\", \"_\", \"_\", \"#{taken_space}\"]\n[\"_\", \"_\", \"_\", \"_\", \"_\", \"_\", \"#{taken_space}\"]\n"
        expect{ board.place_move(7).place_move(7).display_board }.to output(answer).to_stdout
      end
    end
  end
end