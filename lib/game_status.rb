board = [" ", " ", " ", "X", "X", "X", " ", " ", " "]
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # Bottom row
  [0,4,8],  # Top-left diagonals
  [2,4,6],  # Top-right diagonals
  [0,3,6],  # left vertical
  [1,4,7],  # Middle vertical
  [2,5,8]  # Right vertical
]

def won?(board)
    WIN_COMBINATIONS.each do |win|
        posw_1 = win[0];
        posw_2 = win[1];
        posw_3 = win[2];

        posb_1 = board[posw_1];
        posb_2 = board[posw_2];
        posb_3 = board[posw_3];

        if posb_1 == "X" && posb_2 == "X" && posb_3 == "X"
            wins = [posw_1,posw_2,posw_3]
            return wins
    end
end
end
won?(board).inspect
