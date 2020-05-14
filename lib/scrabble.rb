class Scrabble
  def initialize(str)
    @score_table = { 'A' => 1,
                     'B' => 3,
                     'C' => 3,
                     'D' => 2,
                     'E' => 1,
                     'F' => 4 }
    @str = str
  end

  def score
    @score_table[@str]
  end
end
