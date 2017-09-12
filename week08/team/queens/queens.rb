require 'pry'

class Queens
  def initialize(queens={white: [0, 3], black: [7, 3]})
    @default = white
    queen = @queen
    if queens[:white]
      @queen_white = queens[:white]
    end
    if queens[:black]
      @queen_black = queens[:black]
    end
    if queens != queens[:white] && queens[:black]
      @default
    end
  end

  def white
    piece
    [0, 3]
  end

  def black
    [7, 3]
  end
end
