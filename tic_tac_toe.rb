victories = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]

class Player
  def initialize(number, marker)
    @name = "Player#{number}"
    @marker = marker
  end
  attr_accessor :name
  attr_reader :marker
end

class Game
  def initialize()
    @grid = create_grid()
    @players = [Player.new(1, "X"), Player.new(2, "O")]
    @current_player_index = 0
    @current_player = @players[@current_player_index]
    puts "Starting Player: #{@current_player.name}"
    puts "Make your move by inputting a number from the grid:"
    p [1, 2, 3]
    p [4, 5, 6]
    p [7, 8, 9]
  end

  def play()
    winner = nil
    while winner == nil do
      print "#{@current_player.name}'s move: "
      move = gets.chomp.to_i
      if move <= 3
        row = 0
        column = move - 1
      elsif move <= 6
        row = 1
        column = move - 4
      elsif move <= 9
        row = 2
        column = move - 7
      end
      @grid[row][column] = @current_player.marker
      for row in @grid do
        p row
      end
      case (@current_player_index)
      when 0 then @current_player_index = 1
      when 1 then @current_player_index = 0
      end
      @current_player = @players[@current_player_index]
    end
  end
end

def create_grid()
  return [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
end

Game.new().play()
