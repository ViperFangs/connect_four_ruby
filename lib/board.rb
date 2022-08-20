class Board
  attr_reader :board

  def initialize(rows: 6, columns: 7)
    @board = create_board(rows, columns)
  end

  def place_move(column_number)
    
  end

  def display_board
   <<~HEREDOC
    ['_', '_', '_', '_', '_', '_', '_']
    ['_', '_', '_', '_', '_', '_', '_']
    ['_', '_', '_', '_', '_', '_', '_']
    ['_', '_', '_', '_', '_', '_', '_']
    ['_', '_', '_', '_', '_', '_', '_']
    ['_', '_', '_', '_', '_', '_', '_']
    HEREDOC
  end

  private

  def create_board(rows, columns)
    Array.new(rows, Array.new(columns, '_'))
  end
end