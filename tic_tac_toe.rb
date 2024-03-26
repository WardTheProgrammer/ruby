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
    @current_player = @players[0]
    puts "Starting Player: #{@current_player.name}"
    puts "Make your move by inputting a number from the grid:"
    p [1, 2, 3]
    p [4, 5, 6]
    p [7, 8, 9]
  end
end

def create_grid()
  return [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
end

Game.new().play()
