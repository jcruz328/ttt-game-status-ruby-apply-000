# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2],
  ]
  
  def won?(board)
    WIN_COMBINATIONS.each do |arr|
      if (board[arr[0]] == "X" && board[arr[1]] == "X" && board[arr[2]] == "X") || (board[arr[0]] == "O" && board[arr[1]] == "O" && board[arr[2]] == "O")
        return arr
      end
    end
    
    return false if board.all? { |ele| ele == " " }
    return false if board.all? { |ele| ele != " " }
  end
  
  def full?(board)
    board.all? {|ele| ele != " "} ? true : false
  end
  
  def draw?(board)
    !won?(board) && full?(board)
  end
  
  def over?(board)
    won?(board) || draw?(board) || full?(board)
  end
  
  def winner(board)
    WIN_COMBINATIONS.each do |arr|
      if (board[arr[0]] == "X" && board[arr[1]] == "X" && board[arr[2]] == "X") || (board[arr[0]] == "O" && board[arr[1]] == "O" && board[arr[2]] == "O")
        return arr[0]
      end
  end
  