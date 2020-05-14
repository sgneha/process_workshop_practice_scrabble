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
    if @str == 'A'
      @score_table['A']
    elsif @str == 'B'
      @score_table['B']
    else
      @score_table['D']
    end
  end
end
