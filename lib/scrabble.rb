class Scrabble
  def initialize(str)
    @t_score = 0
    @score_table = { 'A' => 1,
                     'B' => 3,
                     'C' => 3,
                     'D' => 2,
                     'E' => 1,
                     'F' => 4 }
    @str = str
  end

  def score
    return 0 if (@str =~ /[a-z]/i).nil?
    letter_array = @str.split('')

    letter_array.each do |letter|
      @t_score += @score_table[letter.upcase]
    end
    @t_score
  end
end
