class Board
  def initialize(rows: 6, columns: 7)
    @board = create_board(rows, columns)
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

  end

end