# Board is responsible for making the board and placing moves on it
class Board
  attr_accessor :board, :available_moves

  def initialize(rows: 6, columns: 7)
    prepare_board(rows, columns)
  end

  def place_move(column_number)
    board[available_moves[human_to_array_index(column_number)]][human_to_array_index(column_number)] = 'x'
    available_moves[human_to_array_index(column_number)] = available_moves[human_to_array_index(column_number)] - 1
    self
  end

  def display_board
    board.each { |row| puts row }
  end

  private

  def prepare_board(rows, columns)
    @board = create_board(rows, columns)
    @available_moves = Array.new(columns) { rows - 1}
  end

  def human_to_array_index(number)
    number - 1
  end

  def create_board(rows, columns)
    Array.new(rows) { Array.new(columns) { available_piece_symbol } }
  end

  def available_piece_symbol
    '_'
  end
end
