class TowersOfHanoi

  attr_accessor :board

  def initialize(board = [[3,2,1],[],[]])
    @board = board
  end

  def move(from_tower, to_tower)
    chosen_disc = @board[from_tower].pop
    if !@board[to_tower].empty?
      raise ArgumentError if @board[to_tower].last < chosen_disc
    end
    @board[to_tower] << chosen_disc
  end

  def get_move
  end

  def render
    @board.to_s
  end

  def won?
    @board == [[],[],[3,2,1]] || @board == [[],[3,2,1],[]]
  end
end
