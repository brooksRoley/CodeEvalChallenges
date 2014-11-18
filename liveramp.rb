class TicTacToe

  def initialize()
    @board = [["_","_","_"],["_","_","_"],["_","_","_"]]
    @players = ["x","o"]
    @turn_number = 0
    @active_player = @players[@turn_number%2]
    play_game
  end

  def play_game
    while(!@victor)
      output_board
      get_player_input
      switch_turns
    end
  end

  def switch_turns
    @turn_number+=1
    @active_player = @players[@turn_number%2]
  end

  def output_board
    @board.each do |x|
      p x
    end
  end

  def get_player_input
    p "type your desired move in format 'x y' with range of 0-2"
    move = gets.chomp
    coordinate = move.split(" ")
    coordinate.map!{|x| x.to_i}
    if coordinate.length != 2
      get_player_input
    end

    if coordinate.all?{|int| int>=0 && int<=2} == false
      get_player_input
    end

    if @board[coordinate[0]][coordinate[1]] == "_"
      place_piece(coordinate)
    else
      get_player_input
    end
  end

  def place_piece(coordinate)
    @board[coordinate[0]][coordinate[1]] = @active_player
    check_all_wins(coordinate)
  end

  def check_all_wins(coordinate)
    check_horizontal(coordinate[0])
    check_vertical(coordinate[1])
    check_negative_diag
    check_positive_diag
  end

  def check_horizontal(x)
    if check_win(@board[x])

    end
  end

  def check_vertical(y)
    temp = @board.transpose
    check_win(temp[y])
  end

  def check_negative_diag
    neg = [@board[0][0], @board[1][1], @board[2][2]]
    check_win(neg)
  end

  def check_positive_diag
    pos = [@board[2][0], @board[1][1], @board[0][2]]
  end

  def check_win(array)
    if array.count(@active_player) == 3
      output_board
      puts "#{@active_player}, YOU WIN"
      exit
    end
  end
end

TicTacToe.new
